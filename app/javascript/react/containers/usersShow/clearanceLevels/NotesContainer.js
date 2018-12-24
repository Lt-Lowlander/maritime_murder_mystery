import React, { Component } from 'react';
import GumshoeTile from '../../../components/GumshoeTile';

class NotesContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      position: "",
      group: "",
      name: "",
      clearance: "",
      notes: []
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
        clearance: body.clearance,
        name: body.patron[0].character,
      })
      if (body.clearance === "character") {
        this.setState({ notes: body.patron[0].player_notes })
      }
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
    document.getElementById("notes").className = "notes-hud presently";
    let doorman;
    if (this.state.clearance === "character") {
      doorman =
        <div>
          <div className="page-heading">
            <div className="heading-icon">
              <i className="fas fa-search"></i>
            </div>
            <div className="heading-text limey">
              Notes
            </div>
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

export default NotesContainer;
