import React, { Component } from 'react';
import GumshoeTile from '../../../components/GumshoeTile';

class BackgroundContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      clearance: "",
      background: ""
    };
  }

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}/background`, {
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
        background: body.char_story[0].char_story,
        clearance: body.clearance
      });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
    document.getElementById("story").className = "origin-story-hud presently";
    let doorman;
    if (this.state.clearance === "character") {
      doorman =
      <div>
        <div className="marg1">
          <div className="page-heading">
            <div className="heading-icon">
              <i className="fas fa-scroll"></i>
            </div>
            <div className="heading-text limey">
              Character Background
            </div>
          </div>
        </div>
        <div className="deco marg2">
          {this.state.background}
        </div>
      </div>
    } else if (this.state.clearance === "gumshoe") {
      doorman = <GumshoeTile/>
    }
    return(
      <div className="page-body">
        <div className="page-content">{doorman}</div>
        <div className="booster-thresh">you can do it!</div>
      </div>
    )
  }
}

export default BackgroundContainer;
