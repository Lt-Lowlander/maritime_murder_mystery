import React from 'react';

const AbilitiesIndexTile = (props) => {
  const powerTotal = (props.chargesTotal)
  const powerUsed = <i className="fas fa-times-circle"></i>;
  const powerLeft = <i className="fas fa-dot-circle"></i>;

  return(
    <div className="ability-index-tile">
      <div className="ability-title-and-desc">
        <div className="ability-name">
        {props.name}:
        </div>
        <div className="ability-desc">
        {props.desc}
        </div>
      </div>
      <div>
        number of uses:
        <span> </span>
        {powerTotal}
      </div>
    </div>
  )
}

export default AbilitiesIndexTile;
