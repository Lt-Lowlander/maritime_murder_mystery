import React, { Component } from 'react';
import GoalsIndexTile from '../../../components/GoalsIndexTile';
import GumshoeTile from '../../../components/GumshoeTile';

class GoalsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      clearance: "",
      goals: []
    };
    this.updateGoals=this.updateGoals.bind(this)
  }

  updateGoals(payload, traverse){
    fetch(traverse, {
      headers: { 'Content-Type': 'application/json' },
      credentials: 'same-origin',
      method: 'PATCH',
      body: JSON.stringify(payload)
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
      this.setState({ goals: body })
    })
  }

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}/goals`, {
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
        goals: body.goals
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
    document.getElementById("goals").className = "goals-hud presently";
    let orderedGroup = this.state.goals.sort(function(a, b){return a.id - b.id});
    let objectives = orderedGroup.map( aim => {
      return(
        <GoalsIndexTile
          key={aim.id}
          id={aim.id}
          task={aim.goal_objective}
          desc={aim.goal_details}
          checked={aim.goal_achieved}
          patronId={this.props.params.id}
          update={this.updateGoals}
          />
      )
    })
    let doorman;
    if (this.state.clearance === "character") {
      doorman=
      <div>
        <div className="page-heading marg1">
          <div className="heading-icon">
            <i className="fas fa-tasks"></i>
          </div>
          <div className="heading-text limey">
            Goals
          </div>
        </div>
        {objectives}
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

export default GoalsIndexContainer;
