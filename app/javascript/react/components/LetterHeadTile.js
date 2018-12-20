import React from 'react';
import GroupSymbolTile from './GroupSymbolTile';

const LetterHeadTile = (props) => {
  let rank;
  if (props.position !=="") {
    rank = <div>{props.position}</div>
  }
  return(
    <div className="visitor-tile page-heading">
      {rank}
      <div>
        -=
        <span>  </span>
        <GroupSymbolTile
        group={props.group}
        />
        <span>  </span>
        {props.name} =-
        '(some floral decoration beflanking the name)'
      </div>
    </div>
  )
}

export default LetterHeadTile;
