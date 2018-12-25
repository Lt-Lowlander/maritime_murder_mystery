import React, { Component } from 'react';
import LetterHeadTile from '../../components/LetterHeadTile';

class UsersStatusContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      viewer: "",
      clearance: "",
      patronData: {}
    };
    this.evenKeel=this.evenKeel.bind(this)
  }

  evenKeel(hudBar){
    let patrol = document.getElementById(hudBar)
    if (patrol.style.display !== "flex") {
      patrol.style.display = "none"
    }
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
        patronData: body.patron[0]
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
    if (this.state.clearance === "character") {
      document.getElementById("status").className = "user-status presently";
      this.evenKeel("char-cons")
      this.evenKeel("divider")
    }
    const viewerClearance = this.state.clearance
    const letterHead =
      <LetterHeadTile
        key={this.state.patronData.id}
        position={this.state.patronData.position}
        group={this.state.patronData.faction_id}
        name={this.state.patronData.character}
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

    let doorman;
    if (viewerClearance == "gumshoe") {
      doorman =
        <div>
        {letterHead}
          <div className="deco marg1">
            {this.state.patronData.title}
            <br/>
            {this.state.patronData.tagline}
          </div>
          <div className="limey marg1">
            Notes:
          </div>
        </div>
    } else if (viewerClearance == "character") {
      doorman =
      <div>
        {letterHead}
        <div>
          <div className="heading-text marg1 limey">
            Character Status
          </div>
        </div>
        <div className="deco marg2">
          Here you can keep track of your progress
          <ul>
            <li>
              number of completed vs. remaining goals
            </li>
            <li>
              abilities used vs. remaining
            </li>
            <li>
              total notes count
            </li>
            <li>
              number of connections made (calculated as the sum of unique user_id's appearing in your notes)
            </li>
            <li>
              etc.
            </li>
          </ul>
        </div>
      </div>
    }
    return(
      <div className="page-body">
        <div className="page-content">{doorman}</div>
        <div className="booster-thresh">you can do it!</div>
      </div>
    )
  }
}

export default UsersStatusContainer;
