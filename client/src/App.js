import React, { Fragment } from 'react';
import {Route} from 'react-router-dom';
import './App.css';
import NoMatch from './components/NoMatch';

const App = () => (
  <Fragment>
    <Router component={NoMatch} />
  </Fragment>
);

export default App;
