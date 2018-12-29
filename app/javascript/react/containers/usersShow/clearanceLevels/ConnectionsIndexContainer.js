import React, { Component } from 'react';
import OtherPeopleTile from '../../../components/OtherPeopleTile';
import BeginnerTipsTile from '../../../components/BeginnerTipsTile';
import GumshoeTile from '../../../components/GumshoeTile';

class ConnectionsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      clearance: "",
      otherPeople: [],
      beginnerTips: []
    };
  }

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}/connections`, {
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
        clearance: body.clearance,
        otherPeople: body.others,
        beginnerTips: body.tips
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
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
    let doorman;
    if (this.state.clearance === "character") {
      doorman=
        <div>
          <div className="page-heading marg1">
            <div className="heading-icon">
              <i className="fas fa-users"></i>
            </div>
            <div className="heading-text limey">
              Other People & Beginner Tips
            </div>
          </div>
          <div className="marg1">
            <div className="other-people-subcat limey">
              Other People
            </div>
            <div>
              {allies}
            </div>
          </div>
          <div className="marg1">
            <div className="beginner-tips-subcat limey">
              Beginner Tips
            </div>
            <div className="deco">
              <div>
                If you've not played a Freeform Games murder mystery game before, then we suggest you start by doing the following:
              </div>
              <ul className="tips-list">
                {nudges}
              </ul>
            </div>
          </div>
        </div>
    } else if (this.state.clearance === "gumshoe") {
      doorman= <GumshoeTile/>
    }
    return(
      <div className="page-body">
        <div className="page-content">{doorman}</div>
        <div className="booster-thresh">you can do it!</div>
      </div>
    )
  }
}

export default ConnectionsIndexContainer;
