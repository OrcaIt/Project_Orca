import React, { useEffect, useState, useRef } from "react";
import Amplify, { Storage } from "aws-amplify";
import awsconfig from "../aws-exports";
import { withAuthenticator } from "@aws-amplify/ui-react";
import style from "../Css/Drive.module.css";
import { Link } from "react-router-dom";
import { Auth } from 'aws-amplify';

Amplify.configure(awsconfig);

function App() {
  const ref = useRef(null);
  const [files, setFiles] = useState([]);
  const [progress, setProgress] = useState();
  document.querySelector("html").style.fontSize = "16px";
  document.querySelector("html").style.overflow = "";
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
      type: "*",
      progressCallback: (progress) => {
        document.querySelector("progress").style.display="block"
        setProgress(Math.round((progress.loaded / progress.total) * 100));
        setTimeout(() => {setProgress()}, 1000);
      }
    })
      .then(resp => {
        console.log(resp);
        document.querySelector("progress").style.display="none"
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
      document.getElementById(file).style.display = "none";
    }).catch(err => { console.log(err); });
  }

  const Down = (file) => {
    document.getElementById(file).style.display = "none";
    Storage.get(file, {level: 'private', download:Boolean}).then(resp => {
      console.log(resp);
      window.location.href=resp;
    }).catch(err => { console.log(err); });
  }

  const Modal = (file) => {
    
    var Status = document.getElementById(file).style.display;

    if(Status == "none")
    {
      document.getElementById(file).style.display = "block";
    }
    else
    {
      document.getElementById(file).style.display = "none";
    }
  }


  return (
    <div>
      <div className={`${style.Header}`}>
        <div><Link to="/" className={`${style.HeaderBrand}`}>Orca Cloud</Link></div>
        <div><button className={`${style.SignOut}`} onClick={() => SignOut()}><i class="fas fa-sign-out-alt"></i></button></div>
      </div>
      <div className={`${style.Main}`}>
        <div className={`${style.UploadBox}`}>
          <div className={`${style.Upload}`}>
            <label className={`${style.Input}`} for="input-file">File Upload</label>
            <input ref={ref} id="input-file" type="file" onChange={handleFileLoad} style={{display:"none"}}/> 
            <div className={`${style.ProgressBox}`}><progress max="100" min="0" value = {progress}></progress>
            </div>  
          </div> 
          <div className={`${style.Drive_File}`}>
            {files.map((file) => (
              <tr className={`${style.FileBox}`} id = "FileBox">
                <td className={`${style.File}`}><button className={`${style.FileBtn}`} onClick={() => Modal(file.key)}>{file.key}</button></td>
                <td className={`${style.Modal}`} id = {file.key}>
                  <button className={`${style.Btn}`} onClick={() => Down(file.key)}>Download</button>
                  <button className={`${style.Btn}`} onClick={() => Delete(file.key)}>Delete</button>
                </td>
              </tr>
            ))}
          </div>
        </div> 
      </div>  
    </div>
  );
}

function ReturnHandler()
{
  
}

export default withAuthenticator(App, ReturnHandler());
