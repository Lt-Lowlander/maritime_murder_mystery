import React, { Component } from 'react'
import { Router, Route, IndexRoute, browserHistory } from 'react-router';
import PartyIndexContainer from '../containers/PartyIndexContainer';
import ManifestContainer from '../containers/manifest/ManifestContainer';
import RulesContainer from '../containers/RulesContainer';
import UsersShowContainer from '../containers/UsersShowContainer';

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
          <IndexRoute component={PartyIndexContainer}/>
          <Route path='/party' component={PartyIndexContainer} />
          <Route path='/factions' component={ManifestContainer} />
          <Route path='/rules' component={RulesContainer} />
          <Route path='/users/:id' component={UsersShowContainer} />
        </Route>
      </Router>
    )
  }
}

export default App
