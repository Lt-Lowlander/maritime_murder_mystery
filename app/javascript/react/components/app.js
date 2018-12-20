import React, { Component } from 'react'
import { Router, Route, IndexRoute, browserHistory } from 'react-router';
import PartyIndexContainer from '../containers/PartyIndexContainer';
import ManifestContainer from '../containers/manifest/ManifestContainer';
import RulesContainer from '../containers/RulesContainer';
import UsersShowContainer from '../containers/usersShow/UsersShowContainer';
import GoalsContainer from '../containers/usersShow/clearanceLevels/GoalsContainer';
import SecretsContainer from '../containers/usersShow/clearanceLevels/SecretsContainer';
import AbilitiesContainer from '../containers/usersShow/clearanceLevels/AbilitiesContainer';
import ConnectionsContainer from '../containers/usersShow/clearanceLevels/ConnectionsContainer';
import NotesContainer from '../containers/usersShow/clearanceLevels/NotesContainer';

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
          <Route path='/users/:id/story' component={UsersShowContainer} />
          <Route path='/users/:id/goals' component={GoalsContainer} />
          <Route path='/users/:id/secrets' component={SecretsContainer} />
          <Route path='/users/:id/abilities' component={AbilitiesContainer} />
          <Route path='/users/:id/connections' component={ConnectionsContainer} />
          <Route path='/users/:id/notes' component={NotesContainer} />
        </Route>
      </Router>
    )
  }
}

export default App
