import React from 'react';

const GroupSymbolTile = (props) => {
  let symbol;
  if (props.group == 1) {
    symbol = <i className="fas fa-dharmachakra"></i>
  } else if (props.group == 2) {
    symbol = <i className="fas fa-cocktail"></i>
  }
  return(
    <span>
      {symbol}
    </span>
  )
}

export default GroupSymbolTile;
