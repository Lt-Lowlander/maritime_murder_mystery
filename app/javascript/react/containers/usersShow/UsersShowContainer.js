import React, { Component } from 'react';
import LetterHeadTile from './clearanceLevels/LetterHeadTile';

class UsersShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      viewer: "",
      clearance: "",
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
        clearance: body.clearance,
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
    const viewerClearance = this.state.clearance
    const letterHead =
      <LetterHeadTile
        key={this.state.patronData.id}
        id={this.state.patronData.id}
        position={this.state.patronData.position}
        group={this.state.patronData.faction_id}
        name={this.state.patronData.character}
        title={this.state.patronData.title}
        tagline={this.state.patronData.tagline}
      />

    const personalizedLetterHead =
      <div>
        {letterHead}
        <div className="page-heading">
          ({this.state.patronData.attendee})
        </div>
        <div>
          {this.state.patronData.title}
          <br/>
          {this.state.patronData.tagline}
        </div>
      </div>

    let permittedDisplay;
    if (viewerClearance == "visitor") {
      permittedDisplay =
        <div>
        {letterHead}
          <div>
            {this.state.patronData.title}
            <br/>
            {this.state.patronData.tagline}
          </div>
        </div>
    }else if (viewerClearance == "member") {
      permittedDisplay =
      <div>
        {personalizedLetterHead}
      </div>
    }
    return(
      <div>
        {permittedDisplay}
      </div>
    )
  }
}

export default UsersShowContainer;
