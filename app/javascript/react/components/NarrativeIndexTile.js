import React from 'react';

const NarrativeIndexTile = (props) => {
  return(
    <div className="narrative-index-tile marg1">
      <div className="narr-heading limey">
        {props.heading}
      </div>
      <div className="narr-content deco">
        <div dangerouslySetInnerHTML={{ __html: props.content.replace(/\n/g, '<br />')}} />
      </div>
    </div>
  )
}

export default NarrativeIndexTile;
