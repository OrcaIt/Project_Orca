import React from "react";
import "../Css/All.module.css"
import style from "../Css/Services.module.css"

class Services extends React.Component
{
    render()
    {
        return(
            <div name ="Services" className={`${style.ServicesInfo}`}>
                <h3>Services</h3>
                <span>Orca Cloud's services are as follows</span>
                <div className={`${style.MainBox}`}>
                    <div className={`${style.ServicesBox}`}>
                        <img className={`${style.Services_Image}`}src ={require('../Asset/Services-Image-1.jpg')}/>
                        <h4>Capacity Provided</h4>
                        <div className={`${style.TextBox}`}>
                            <p>We implemented a service that provides storage space to users.</p>
                            <p> Upload the file to the storage space and download it.</p>
                        </div>
                    </div>
                    <div className={`${style.ServicesBox}`}>
                        <img className={`${style.Services_Image}`} src ={require('../Asset/Services-Image-2.jpg')}/>
                        <h4>Web Design</h4>
                        <div className={`${style.TextBox}`}>
                            <p>We designed a responsive web that can respond to all screens from mobile to desktop environments.</p> 
                            <p>Experience customized designs.</p>
                        </div>
                    </div>
                    <div className={`${style.ServicesBox}`}>
                        <img className={`${style.Services_Image}`} src ={require('../Asset/Services-Image-3.jpg')}/>
                        <h4>Security</h4>
                        <div className={`${style.TextBox}`}>
                            <p>User information is stored on an inaccessible server and kept private</p>
                            <p>Please use it with confidence!</p>
                        </div>
                    </div>
                </div>          
            </div>
        );
    }
}

export default Services;