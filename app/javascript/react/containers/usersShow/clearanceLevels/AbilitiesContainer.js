import React, { Component } from 'react';
import LetterHeadTile from '../../../components/LetterHeadTile';

class AbilitiesContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      position: "",
      group: "",
      name: "",
      abilities: [],
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
        abilities: body.patron.abilities
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("abilities").className = "abilities-hud presently";
    return(
      <div>
        <LetterHeadTile
          key={this.state.patronId}
          position={this.state.position}
          group={this.state.group}
          name={this.state.name}
          />
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
