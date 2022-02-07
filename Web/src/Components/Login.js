import React, { useEffect, useState, useRef } from "react";
import Amplify, { Storage } from "aws-amplify";
import awsconfig from "../aws-exports";
import { withAuthenticator } from "@aws-amplify/ui-react";
import style from "../Css/Login.module.css";
import { Link } from "react-router-dom";
import { Auth } from 'aws-amplify';
import $ from "jquery";

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
  
  async function SignOut(props) {
    try {
        await Auth.signOut();
        window.location.href="/"
    } catch (error) {
        console.log('error signing out: ', error);
    }
  }

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

  const Delete = (file) => {
    Storage.remove(file, {level: 'private'}).then(resp => {
      console.log(resp);
      loadImages();
    }).catch(err => { console.log(err); });
  }

  const Down = (file) => {
    Storage.get(file, {level: 'private', download:Boolean}).then(resp => {
      console.log(resp);
      window.location.href=resp;
    }).catch(err => { console.log(err); });
  }

  return (
    <div className={`${style.Drive}`}>
      <div className={`${style.Header}`}>
        <div><Link to="/" className={`${style.HeaderBrand}`}>Orca Cloud</Link></div>
        <div><button className={`${style.SignOut}`} onClick={() => SignOut()}><i class="fas fa-sign-out-alt"></i></button></div>
      </div>
      <div className={`${style.Drive_File}`}>
        {files.map((file) => (
          <tr className={`${style.FileBox}`}>
            <td className={`${style.File}`}>File : {file.key}</td>
            <td>
              <button className={`${style.Btn}`} onClick={() => Down(file.key)}>Download</button>
              <button className={`${style.Btn}`} onClick={() => Delete(file.key)}>Delete</button>
            </td>
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

function ReturnHandler()
{
  $("html").removeAttr("font-size");
}

export default withAuthenticator(App, ReturnHandler());
