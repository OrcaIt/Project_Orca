import React, { useEffect, useState, useRef } from "react";
import Amplify, { Storage } from "aws-amplify";
import awsconfig from "../aws-exports";
import { withAuthenticator } from "@aws-amplify/ui-react";
import style from "../Css/Login.module.css";
import { Link } from "react-router-dom";

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
    <div className={`${style.Drive}`}>
      <div className={`${style.Header}`}>
        <div><Link to="/" className={`${style.HeaderBrand}`}>Orca Cloud</Link></div>
      </div>
      <div className={`${style.Drive_File}`}>
        {files.map((file) => (
          <tr className={`${style.FileBox}`}>
            <td className={`${style.File}`}>File : {file.key}</td>
            <td><button className={`${style.Delete}`} onClick={() => handleDelete(file.key)}>Delete</button></td>
          </tr>
        ))}
      </div>
      <div className={`${style.Upload}`}>
        <label className={`${style.Input}`} for="input-file">File Upload</label>
        <input ref={ref} id="input-file" type="file" onChange={handleFileLoad} style={{display:"none"}}/>
      </div>     
    </div>
  );
}

export default withAuthenticator(App);
