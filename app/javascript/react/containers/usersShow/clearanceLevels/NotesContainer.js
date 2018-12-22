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
    document.getElementById("notes").className = "notes-hud presently";
    let output;
    if (this.state.clearance === "character") {
      output =
        <div>
          <div className="page-heading">
            <div className="heading-icon">
              <i className="fas fa-search"></i>
            </div>
            <div className="heading-text cursive">
              Notes
            </div>
          </div>
          chellooo
        </div>
    } else if (this.state.clearance === "gumshoe") {
      output = <GumshoeTile/>
    }

    return(
      <div>
        {output}
      </div>
    )
  }
}

export default NotesContainer;
