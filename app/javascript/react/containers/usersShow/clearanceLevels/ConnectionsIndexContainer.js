import React, { Component } from 'react';
import LetterHeadTile from '../../../components/LetterHeadTile';
import OtherPeopleTile from '../../../components/OtherPeopleTile';
import BeginnerTipsTile from '../../../components/BeginnerTipsTile';

class ConnectionsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      position: "",
      group: "",
      name: "",
      otherPeople: [],
      beginnerTips: []
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
        patronId: body.patron[0].id,
        position: body.patron[0].position,
        group: body.patron[0].faction_id,
        name: body.patron[0].character,
        otherPeople: body.patron[0].other_people,
        beginnerTips: body.patron[0].beginner_tips
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("connections").className = "connections-hud presently";
    let allies = this.state.otherPeople.map(ally => {
      return(
        <OtherPeopleTile
        key={ally.id}
        id={ally.id}
        person={ally.lead_name}
        personDesc={ally.lead_info}
        />
      )
    });
    let nudges = this.state.beginnerTips.map(nudge => {
      return(
        <BeginnerTipsTile
        key={nudge.id}
        id={nudge.id}
        tip={nudge.advice}
        />
      )
    });
    return(
      <div>
        <LetterHeadTile
          key={this.state.patronId}
          position={this.state.position}
          group={this.state.group}
          name={this.state.name}
          />
        <div className="page-heading">
          <div className="heading-icon">
            <i className="fas fa-users"></i>
          </div>
          <div className="heading-text">
            Other People & Beginner Tips
          </div>
        </div>
        <div>
          {allies}
        </div>
        <div>
          <div>
            If you've not played a Freeform Games murder mystery game before, then we suggest you start by doing the following:
          </div>
          <ul>
            {nudges}
          </ul>
        </div>
      </div>
    )
  }
}

export default ConnectionsIndexContainer;
