import React from 'react';
import GroupSymbolTile from './GroupSymbolTile';

const LetterHeadTile = (props) => {
  let rank;
  if (props.position !=="") {
    rank = <div>{props.position}</div>
  }
  return(
    <div className="visitor-tile limey marg1">
      {rank}
      <div className="char-cast">
        -=
        <span>  </span>
        <GroupSymbolTile
        group={props.group}
        />
        <span> </span>
        <span>
          {props.name} =-
        </span>
        '(some floral decoration beflanking the name)'
      </div>
    </div>
  )
}

export default LetterHeadTile;
