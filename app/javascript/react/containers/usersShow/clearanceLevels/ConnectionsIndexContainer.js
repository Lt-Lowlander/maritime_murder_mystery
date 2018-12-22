import React, { Component } from 'react';
import OtherPeopleTile from '../../../components/OtherPeopleTile';
import BeginnerTipsTile from '../../../components/BeginnerTipsTile';
import GumshoeTile from '../../../components/GumshoeTile';

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
        clearance: body.clearance
      })
      if (body.clearance === "character") {
        this.setState({
          otherPeople: body.patron[0].other_people,
          beginnerTips: body.patron[0].beginner_tips
        })
      }
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("connections").className = "connections-hud presently";
    const allies = this.state.otherPeople.map(ally => {
      return(
        <OtherPeopleTile
        key={ally.id}
        id={ally.id}
        person={ally.lead_name}
        personDesc={ally.lead_info}
        />
      )
    });
    const nudges = this.state.beginnerTips.map(nudge => {
      return(
        <BeginnerTipsTile
        key={nudge.id}
        id={nudge.id}
        tip={nudge.advice}
        />
      )
    });
    let output;
    if (this.state.clearance === "character") {
      output=
        <div>
          <div className="page-heading">
            <div className="heading-icon">
              <i className="fas fa-users"></i>
            </div>
            <div className="heading-text cursive">
              Other People & Beginner Tips
            </div>
          </div>
          <div>
            <div className="cursive">
              Other People
            </div>
            <div>
              {allies}
            </div>
          </div>
          <div>
            <div className="cursive">
              Beginner Tips
            </div>
            <div className="deco">
              <div>
                If you've not played a Freeform Games murder mystery game before, then we suggest you start by doing the following:
              </div>
              <ul>
                {nudges}
              </ul>
            </div>
          </div>
        </div>
    } else if (this.state.clearance === "gumshoe") {
      output= <GumshoeTile/>
    }
    return(
      <div>
        {output}
      </div>
    )
  }
}

export default ConnectionsIndexContainer;
