import React from 'react';

const AbilitiesExpiredTile = (props) => {
  return(
    <div className="power-unit lowlight" onClick={props.regen}>
      <i className="fas fa-times-circle"></i>
    </div>
  )
}

export default AbilitiesExpiredTile;
