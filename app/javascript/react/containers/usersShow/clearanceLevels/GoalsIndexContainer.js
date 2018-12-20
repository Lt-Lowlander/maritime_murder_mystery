import React, { Component } from 'react';
import LetterHeadTile from '../../../components/LetterHeadTile';
import GoalsIndexTile from '../../../components/GoalsIndexTile';

class GoalsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      position: "",
      group: "",
      name: "",
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
        patronId: body.patron[0].id,
        position: body.patron[0].position,
        group: body.patron[0].faction_id,
        name: body.patron[0].character,
        goals: body.patron[0].goals
      })
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
            <i className="fas fa-tasks"></i>
          </div>
          <div className="heading-text">
            Goals
          </div>
        </div>
        {objectives}
      </div>
    )
  }
}

export default GoalsIndexContainer;
