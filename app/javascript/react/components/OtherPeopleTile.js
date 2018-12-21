import React from 'react';

const OtherPeopleTile = (props) => {
  return(
    <div className="other-people-tile">
      <div className="other-people-heading">
        {props.person}
      </div>
      <div className="other-people-desc">
        {props.personDesc}
      </div>
    </div>
  )
}

export default OtherPeopleTile;
