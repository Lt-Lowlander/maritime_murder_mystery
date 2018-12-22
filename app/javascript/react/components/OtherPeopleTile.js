import React from 'react';

const OtherPeopleTile = (props) => {
  return(
    <div className="other-people-tile marg1">
      <div className="other-people-heading char-cast">
        {props.person}
      </div>
      <div className="other-people-desc deco">
        {props.personDesc}
      </div>
    </div>
  )
}

export default OtherPeopleTile;
