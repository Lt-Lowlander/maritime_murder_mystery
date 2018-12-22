import React from 'react';

const NarrativeIndexTile = (props) => {
  return(
    <div className="narrative-index-tile marg1">
      <div className="narr-heading limey">
        {props.heading}
      </div>
      <div className="narr-content deco">
        {props.content}
      </div>
    </div>
  )
}

export default NarrativeIndexTile;
