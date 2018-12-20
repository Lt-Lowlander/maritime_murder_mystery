import React from 'react';
import { Link } from 'react-router';

// similar to the project index tile
const FactionMembersTile = (props) => {
  let sleuth;
  let rank;
  if (props.position !=="") {
    rank =
    <span>, {props.position}</span>
  }
  if (props.viewer == "familiar") {
    sleuth =
      <span>({props.attendee})</span>
  }
  return(
    <li className="cast-member-tile">
      <div>
        <Link to={`/users/${props.id}`}>
          {props.character}
        </Link>
        <span>{rank}</span>
      </div>
      <div>
        {sleuth} {props.title}
      </div>
    </li>
  )
}

export default FactionMembersTile;
