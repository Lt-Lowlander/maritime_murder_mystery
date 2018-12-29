import React, { Component } from 'react';

class GoalsIndexTile extends Component {
  constructor(props) {
    super(props)
    this.state = {
    }
    this.progress=this.progress.bind(this)
    this.regress=this.regress.bind(this)
  }

  progress(event){
    event.preventDefault();
    const progPayload = {
      id: this.props.id,
      goal_achieved: 1
    }
    const traverse = `/api/v1/users/${this.props.patronId}/goals/${this.props.id}.json`
    this.props.update(progPayload, traverse);
  }
  regress(event){
    event.preventDefault();
    const progPayload = {
      id: this.props.id,
      goal_achieved: 0
    }
    const traverse = `/api/v1/users/${this.props.patronId}/goals/${this.props.id}.json`
    this.props.update(progPayload, traverse);
  }

  render(){
    let indicator;
    let taskStatus;
    let descStatus;
    if (this.props.checked == 0) {
      indicator =
        <div className="potentially">
          <i className="far fa-square" onClick={this.progress}></i>
        </div>
      taskStatus = <div>{this.props.task}:</div>
      descStatus = <div>{this.props.desc}</div>
    } else if (this.props.checked == 1) {
      indicator = <i className="fas fa-check" onClick={this.regress}></i>
      taskStatus = <div className="mission-accomplice lowlight">{this.props.task}:</div>
      descStatus = <div className="mission-accomplice lowlight">{this.props.desc}</div>
    }
    return(
      <div className="goal-index-tile marg2">
        <div className="completion-status">
        {indicator}
        </div>
        <div className="goal-title-and-desc">
          <div className="goal-name limey">
          {taskStatus}
          </div>
          <div className="goal-desc deco">
          {descStatus}
          </div>
        </div>
      </div>
    )
  }
}

export default GoalsIndexTile;
