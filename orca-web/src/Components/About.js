import React from "react";
import "../Css/All.module.css";
import style from "../Css/About.module.css";

class About extends React.Component
{
    render()
    {
        return(
            <div name ="About" className={`${style.AboutInfo}`}>
                <h3>About</h3>
                <span>The development process of Orca Cloud</span>
                <div className={`${style.Info}`}>
                    <div className={`${style.InfoBox}`}>
                        <div class={`${style.ImageBox}`}>
                            <img className={`${style.About_Image}`} src={require('../Asset/About-Image-1.jpg')}/>
                        </div>
                        <div className={`${style.ContentsBox}`}>
                            <div className={`${style.TitleBox}`}>
                                <h2>2021-12<br/>Beginnings</h2>
                            </div>
                            <div className={`${style.TextBox}`}>
                                <span>Our team project started in December 2021. It is a project conducted by mentor Ryu Seung-seok and five team members.</span>
                            </div>
                        </div>
                    </div>
                    <div className={`${style.Line}`}/>
                    <div className={`${style.InfoBox}`}>
                        <div className={`${style.ImageBox}`}>
                            <img className={`${style.About_Image}`} src={require('../Asset/About-Image-2.jpg')}/>
                        </div>
                        <div className={`${style.ContentsBox}`}>
                            <div className={`${style.TitleBox}`}>
                                <h2>2022-01<br/>Direction</h2>
                            </div>
                            <div className={`${style.TextBox}`}>
                                <span>We decided to implement a cloud storage service based on the AWS 3 tier architecture. It was implemented using S3 of AWS service.</span>
                            </div>
                        </div>
                    </div>
                    <div className={`${style.Line}`}/>
                    <div className={`${style.InfoBox}`}>
                        <div class={`${style.ImageBox}`}>
                            <img className={`${style.About_Image}`} src={require('../Asset/About-Image-3.jpg')}/>   
                        </div>
                        <div className={`${style.ContentsBox}`}>
                            <div className={`${style.TitleBox}`}>
                                <h2>2022-01<br/> Development</h2>
                            </div>
                            <div className={`${style.TextBox}`}>
                                <span>The development process was not smooth, but all the team members participated hard and tried hard. I hope you get as much results as you try.</span>   
                            </div>
                        </div>
                    </div>
                    <div className={`${style.Line}`}/>
                    <div className={`${style.InfoBox}`}>
                        <div class={`${style.ImageBox}`}>
                            <img className={`${style.About_Image}`} src={require('../Asset/About-Image-4.jpg')}/>
                        </div>
                        <div className={`${style.ContentsBox}`}>
                            <div className={`${style.TitleBox}`}>
                                <h2>2022-02<br/>Presentation</h2>
                            </div>
                            <div className={`${style.TextBox}`}>
                                <span>After a long effort, we are now about to announce the project. I hope all of our team members can get good results as much as they have worked hard.</span>   
                            </div>
                        </div>
                    </div>
                </div>        
            </div>
        )
    }
}

export default About;