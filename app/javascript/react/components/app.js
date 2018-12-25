import React, { Component } from 'react'
import { Router, Route, IndexRoute, browserHistory } from 'react-router';
import Konami from './KonamiCode';
import PartyIndexContainer from '../containers/PartyIndexContainer';
import ManifestContainer from '../containers/manifest/ManifestContainer';
import RulesContainer from '../containers/RulesContainer';
import UsersStatusContainer from '../containers/usersShow/UsersStatusContainer';
import BackgroundContainer from '../containers/usersShow/clearanceLevels/BackgroundContainer';
import GoalsIndexContainer from '../containers/usersShow/clearanceLevels/GoalsIndexContainer';
import SecretsContainer from '../containers/usersShow/clearanceLevels/SecretsContainer';
import AbilitiesIndexContainer from '../containers/usersShow/clearanceLevels/AbilitiesIndexContainer';
import ConnectionsIndexContainer from '../containers/usersShow/clearanceLevels/ConnectionsIndexContainer';
import NotesContainer from '../containers/usersShow/clearanceLevels/NotesContainer';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
    };
  }

  render(){

    // This gets called any time a user enters the Konami Code
    const redHerring = new Konami('https://i.imgur.com/AaER77x.gifv');

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
          <Route path='/manifest' component={ManifestContainer} />
          <Route path='/rules' component={RulesContainer} />
          <Route path='/users/:id' component={UsersStatusContainer} />
          <Route path='/users/:id/background' component={BackgroundContainer} />
          <Route path='/users/:id/goals' component={GoalsIndexContainer} />
          <Route path='/users/:id/secrets' component={SecretsContainer} />
          <Route path='/users/:id/abilities' component={AbilitiesIndexContainer} />
          <Route path='/users/:id/connections' component={ConnectionsIndexContainer} />
          <Route path='/users/:id/notes' component={NotesContainer} />
        </Route>
      </Router>
    )
  }
}

export default App
