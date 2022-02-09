import React from 'react';
import ReactDOM from 'react-dom';
import "./Css/index.module.css";
import { BrowserRouter } from "react-router-dom";
import Routers from "./Components/Routers";

ReactDOM.render(
  <React.StrictMode>
    <BrowserRouter>
        <Routers/>
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById('root')
);
