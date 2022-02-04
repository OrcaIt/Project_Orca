import React from "react";
import "../Css/All.module.css"
import style from "../Css/Fotter.module.css"

class Fotter extends React.Component
{
    render()
    {
        return(
            <div className={`${style.FotterBox}`}>
                <p>Korea IT</p>
                
                <div className={`${style.LogoBox}`}>
                    <a href="https://www.instagram.com/"><i className="fab fa-instagram"></i></a>
                    <a href="https://www.facebook.com/"><i className="fab fa-facebook-square"></i></a>
                    <a href="https://twitter.com/"><i className="fab fa-twitter-square"></i></a>
                </div>
                <p>Team Orca</p>
            </div>
        );
    }
}

export default Fotter;