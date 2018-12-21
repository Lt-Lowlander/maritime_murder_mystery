import React, { Component } from 'react';
import AbilitiesIndexTile from '../../../components/AbilitiesIndexTile';

class AbilitiesIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      position: "",
      group: "",
      name: "",
      abilities: []
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
        abilities: body.patron[0].abilities
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("abilities").className = "abilities-hud presently";
    const skillSum = this.state.abilities.length;
    let powers = this.state.abilities.map(skill => {
      return(
        <AbilitiesIndexTile
          key={skill.id}
          id={skill.id}
          name={skill.power_name}
          desc={skill.power_desc}
          chargesTotal={skill.quant_total}
          chargesFresh={skill.quant_left}
          chargesUsed={skill.quant_used}
        />
      )
    })
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
        <div>
          <div>
            You have these {skillSum} abilities available to you:
          </div>
          <div>
            {powers}
          </div>
        </div>
      </div>
    )
  }
}

export default AbilitiesIndexContainer;
