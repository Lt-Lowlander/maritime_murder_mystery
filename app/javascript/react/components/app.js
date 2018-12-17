import React, { Component } from 'react'
import { Router, Route, IndexRoute, browserHistory } from 'react-router';
import Sleuth_HUD from './Sleuth_HUD';
import PartyIndexContainer from '../containers/PartyIndexContainer';
import ManifestContainer from '../containers/ManifestContainer';
import RulesContainer from '../containers/RulesContainer';
import VisitorLandingContainer from '../containers/VisitorLandingContainer';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
    };
  }

  render(){

    // This is the flash message that appears when someone logs in or out
    $(function(){
      var flashDurationInSeconds = 1;
      var flashContainerId = 'flash-messages';
      function removeFlashMessages() {
        $('#' + flashContainerId).remove();
      }
      setTimeout(removeFlashMessages, flashDurationInSeconds * 1000);
    });

    return(
      <Router history={browserHistory}>
        <Route path='/'>
          <IndexRoute component={Sleuth_HUD}/>
          <Route path='/party' component={PartyIndexContainer} />
          <Route path='/factions' component={ManifestContainer} />
          <Route path='/rules' component={RulesContainer} />
        </Route>
      </Router>
    )
  }
}

export default App
