import React, { Component } from 'react';

class AbilitiesContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      viewer: {}
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
        viewer: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("story").className = "origin-story-hud";
    document.getElementById("goals").className = "goals-hud";
    document.getElementById("secrets").className = "secrets-hud";
    document.getElementById("connections").className = "connections-hud";
    document.getElementById("abilities").className = "abilities-hud presently";
    document.getElementById("notes").className = "notes-hud";
    return(
      <div>
        <div className="page-heading">
          <div className="heading-icon">
            <i className="fas fa-wind"></i>
          </div>
          <div className="heading-text">
            Abilities
          </div>
        </div>
yo mcgeech
      </div>
    )
  }
}

export default AbilitiesContainer;
