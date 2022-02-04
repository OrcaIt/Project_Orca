import React, { useEffect, useState, useRef } from "react";
import Amplify, { Storage } from "aws-amplify";
import awsconfig from "./aws-exports";
import { AmplifySignOut, withAuthenticator } from "@aws-amplify/ui-react";
import style from "Login.module.css";

Amplify.configure(awsconfig);

function App() {
  const ref = useRef(null);
  const [files, setFiles] = useState([]);

  const loadImages = () => {
    Storage.list('', {level: 'private'})
    .then(files => {
      setFiles(files);
    })
    .catch(err => {
      console.log(err);
    });
  }

  useEffect(() => {
    loadImages();
  }, []);

  const handleFileLoad = () => {
    const filename = ref.current.files[0].name;
    Storage.put(filename, ref.current.files[0], {
      level: "private",
      type: "image/png",
    })
      .then(resp => {
        console.log(resp);
        loadImages();
      })
      .catch(err => {
        console.log(err);
      });
  };

  const handleDelete = (file) => {
    Storage.remove(file, {level: 'private'}).then(resp => {
      console.log(resp);
      loadImages();
    }).catch(err => { console.log(err); });
  }

  return (
    <div className="App">
      <div>My App Content</div>
      <br></br>
      <input ref={ref} type="file" onChange={handleFileLoad} />
      <br></br>
      <br></br>
      <table>
        <thead>
          <tr>
            <td></td>
            <td>Name</td>
            <td>Action</td>
          </tr>
        </thead>
        <tbody>
          {files.map((file, i) => (
            <tr>
              <td>{i}</td>
              <td>{file.key}</td>
              <td><button onClick={() => handleDelete(file.key)}>Delete</button></td>
            </tr>
          ))}
        </tbody>
      </table>
      <br></br>
      <AmplifySignOut />
    </div>
  );
}

export default withAuthenticator(App);
