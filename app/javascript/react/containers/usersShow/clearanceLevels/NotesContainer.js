import React, { Component } from 'react';
import GumshoeTile from '../../../components/GumshoeTile';

class NotesContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      clearance: "",
      notes: []
    };
  }

  

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}/notes`, {
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
        notes: body.notes
      })
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
