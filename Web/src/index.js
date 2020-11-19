import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import reportWebVitals from './reportWebVitals';
import { BrowserRouter as Router } from "react-router-dom";

import Header from "./VIEWS/Header";
import Footer from "./VIEWS/Footer"
import Routting from './Routting';

ReactDOM.render(
  <Router>
    <div>
      <Header />
      <Routting/>
      <Footer />
    </div>
  </Router>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
