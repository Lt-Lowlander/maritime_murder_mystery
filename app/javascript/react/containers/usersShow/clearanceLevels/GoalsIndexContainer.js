import React, { Component } from 'react';
import GoalsIndexTile from '../../../components/GoalsIndexTile';
import GumshoeTile from '../../../components/GumshoeTile';

class GoalsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      position: "",
      group: "",
      name: "",
      clearance: "",
      goals: []
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
        clearance: body.clearance,
        patronId: body.patron[0].id,
        position: body.patron[0].position,
        group: body.patron[0].faction_id,
        name: body.patron[0].character,
      })
      if (body.clearance === "character") {
        this.setState({ goals: body.patron[0].goals })
      }
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("goals").className = "goals-hud presently";
    let objectives = this.state.goals.map( aim => {
      return(
        <GoalsIndexTile
          key={aim.id}
          id={aim.id}
          task={aim.goal_objective}
          desc={aim.goal_details}
          checked={aim.goal_achieved}
          />
      )
    })
    let output;
    if (this.state.clearance === "character") {
      output=
      <div>
        <div className="page-heading">
          <div className="heading-icon">
            <i className="fas fa-tasks"></i>
          </div>
          <div className="heading-text cursive">
            Goals
          </div>
        </div>
        {objectives}
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

export default GoalsIndexContainer;
