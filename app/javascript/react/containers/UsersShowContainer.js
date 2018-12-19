import React, { Component } from 'react';
import GroupSymbolTile from '../components/GroupSymbolTile';

class UsersShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      viewer: "",
      patronData: {},
      abilitiesList: [],
      tipsList: [],
      goalsList: [],
      otherPeopleList: [],
      playerNotesList: [],
    };
  }

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}`, {
      credentials: 'same-origin'
    })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {

      this.setState({
        viewer: body.viewer,
        patronData: body.patron[0],
        abilitiesList: body.patron[0].abilities,
        tipsList: body.patron[0].beginner_tips,
        goalsList: body.patron[0].goals,
        otherPeopleList: body.patron[0].other_people,
        playerNotesList: body.patron[0].player_notes,
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    const voyager = this.state.patronData.character


    return(
      <div className="">
        -=
        <span>
          <GroupSymbolTile
            group={this.state.patronData.faction_id}
            />
        </span>
        {voyager} =- '(some floral decoration beflanking the name)'
      </div>
    )
  }
}

export default UsersShowContainer;
