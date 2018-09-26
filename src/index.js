import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import registerServiceWorker from './registerServiceWorker';

import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import $ from 'jquery';
import PopperJS from 'popper.js';

ReactDOM.render(<App />, document.getElementById('root'));
registerServiceWorker();
