import React from 'react';

const AbilitiesIndexTile = (props) => {
  const powerTotal = (props.chargesTotal)
  const powerUsed = <i className="fas fa-times-circle"></i>;
  const powerLeft = <i className="fas fa-dot-circle"></i>;

  return(
    <div className="ability-index-tile marg1">
      <div className="ability-title-and-desc">
        <div className="ability-name limey">
        {props.name}:
        </div>
        <div className="ability-desc deco">
        {props.desc}
        </div>
      </div>
      <div className="deco">
        number of uses:
        <span> </span>
        {powerTotal}
      </div>
    </div>
  )
}

export default AbilitiesIndexTile;
