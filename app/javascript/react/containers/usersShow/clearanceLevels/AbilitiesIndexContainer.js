import React, { Component } from 'react';
import AbilitiesIndexComponent from '../../../components/AbilitiesIndexComponent';
import GumshoeTile from '../../../components/GumshoeTile';

class AbilitiesIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      clearance: "",
      abilities: []
    };
  }

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}/abilities`, {
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
        abilities: body.abilities,
        clearance: body.clearance
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
    document.getElementById("abilities").className = "abilities-hud presently";
    const skillSum = this.state.abilities.length;
    let powers = this.state.abilities.map(skill => {
      return(
        <AbilitiesIndexComponent
          key={skill.id}
          id={skill.id}
          name={skill.power_name}
          desc={skill.power_desc}
          cells={skill.cells}
        />
      )
    })
    let doorman;
    if (this.state.clearance === "character") {
      doorman =
        <div>
          <div className="page-heading marg1">
            <div className="heading-icon">
              <i className="fas fa-wind"></i>
            </div>
            <div className="heading-text limey">
              Abilities
            </div>
          </div>
          <div>
            <div className="marg1 deco">
              You have these {skillSum} abilities available to you:
            </div>
            <div>
              {powers}
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

export default AbilitiesIndexContainer;
