import React from 'react';
import GroupSymbolTile from '../../../components/GroupSymbolTile';

const LetterHeadTile = (props) => {
  let rank;
  if (props.position !=="") {
    rank = <div>{props.position}</div>
  }
  return(
    <div className="visitor-tile">
      {rank}
      <div>
        -= <span>
          <GroupSymbolTile
          group={props.group}
          />
        </span>
        {props.name} =-
        '(some floral decoration beflanking the name)'
      </div>
    </div>
  )
}

export default LetterHeadTile;
