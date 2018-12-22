import React from 'react';

const NarrativeIndexTile = (props) => {
  return(
    <div className="narrative-index-tile">
      <div className="narr-heading">
        {props.heading}
      </div>
      <div className="narr-content">
        {props.content}
      </div>
    </div>
  )
}

export default NarrativeIndexTile;
