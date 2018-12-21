import React, { Component } from 'react';

class BackgroundContainer extends Component {
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
      });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("story").className = "origin-story-hud presently";
    const viewerClearance = this.state.clearance;
    let permittedDisplay;
    if (viewerClearance == "visitor") {
      permittedDisplay =
        <div>
          <div>
            {this.state.patronData.title}
            <br/>
            {this.state.patronData.tagline}
          </div>
        </div>
    }else if (viewerClearance == "member") {
      permittedDisplay =
      <div>
        hi cat
      </div>
    } else if (viewerClearance == "character") {
      permittedDisplay =
      <div>
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

export default BackgroundContainer;
