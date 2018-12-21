import React from 'react';

const GoalsIndexTile = (props) => {
  let indicator;
  if (props.checked == 0) {
    indicator = <i className="far fa-square"></i>
  } else if (props.checked == 1) {
    indicator = <i className="fas fa-check"></i>
  }
  return(
    <div className="goal-index-tile">
      <div className="completion-status">
      {indicator}
      </div>
      <div className="goal-title-and-desc">
        <div className="goal-name">
        {props.task}:
        </div>
        <div className="goal-desc">
        {props.desc}
        </div>
      </div>
    </div>
  )
}

export default GoalsIndexTile;