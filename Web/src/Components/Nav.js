import React from "react";
import "../Css/All.module.css";
import style from "../Css/Nav.module.css";
import { Link } from "react-scroll";
import { NavLink } from "react-router-dom";

class Nav extends React.Component
{
    render()
    {
        return(
            <header>
                <nav>
                    <div><a className={`${style.NavbarBrand}`} href="#">Orca Cloud</a></div>
                    <div id ="Link Box">
                        <Link to="Services" spy={true} smooth={true} className={`${style.Link}`}>Serivces</Link>
                        <Link className={`${style.Link}`} to="About" spy={true} smooth={true}>About</Link>                 
                        <NavLink to="/Drive"><button className={`${style.Login}`}>Sign In</button></NavLink>
                    </div>
                </nav>
                <div className={`${style.MainHeader}`}>
                    <h2>Welcom To Orca Cloud!</h2>
                    <p>Orca Cloud is a cloud storage project based on the Aws 3-tier architecture</p>
                </div>               
            </header>
        );
    }
}

export default Nav;