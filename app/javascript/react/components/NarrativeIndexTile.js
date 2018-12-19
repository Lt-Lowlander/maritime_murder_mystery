import React from 'react';

const NarrativeIndexTile = (props) => {
  return(
    <div className="narrative-index-tile">
      <div className="narr-heading">
        <div className="box-1"></div>
        <div className="box-2"></div>
        <div className="box-3"></div>
        <div className="">
          {props.heading}
        </div>
      </div>
      <div className="narr-content">
        {props.content}
      </div>
    </div>
  )
}

export default NarrativeIndexTile;
