import React from 'react';

const AbilitiesPotentialTile = (props) => {
  return(
    <div className="power-unit" onClick={props.use}>
      <i className="fas fa-dot-circle"></i>
    </div>
  )
}

export default AbilitiesPotentialTile;
