import 'bootstrap/dist/css/bootstrap.min.css';
import $ from 'jquery';
import Popper from 'popper.js';
import 'bootstrap/dist/js/bootstrap.bundle.min';
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Home from './Home';
import Login from './Login';

ReactDOM.render(
  <React.StrictMode>
    {/* confirm if user is login to show the home component */}
    {localStorage.getItem('user-info') ? <Home /> : <Login />}
  </React.StrictMode>,
  document.getElementById('root')
);
