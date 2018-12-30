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
      <div className="char-cast letter-header">
        <img className="ornament-left" src="/name-ornament-mirror.svg"></img>
        <span className="within-bookends">
          <span>  </span>
          <GroupSymbolTile
            group={props.group}
            />
          <span> </span>
          <span className="namebox">
            {props.name}
          </span>
        </span>
        <img className="ornament-right" src="/name-ornament.svg"></img>
      </div>
    </div>
  )
}

export default LetterHeadTile;
