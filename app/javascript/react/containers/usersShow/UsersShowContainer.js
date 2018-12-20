import React, { Component } from 'react';
import LetterHeadTile from '../../components/LetterHeadTile';

class UsersShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      viewer: "",
      clearance: "",
      patronData: {}
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
        patronData: body.patron[0]
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("story").className = "origin-story-hud presently";
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
    } else if (viewerClearance == "character") {
      permittedDisplay =
      <div>
        {letterHead}
        <div>
          <div className="page-heading">
            <div className="heading-icon">
              <i className="fas fa-scroll"></i>
            </div>
            <div className="heading-text">
              Character Background
            </div>
          </div>
        </div>
        <div>
          {this.state.patronData.char_story.char_story}
        </div>
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
