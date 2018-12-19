import React from 'react';
import { Link } from 'react-router';

// similar to the project index tile
let FactionMembersTile = (props) => {
  let rank;
  if (props.position !=="") {
    rank =
    <span>, {props.position}</span>
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
        {props.title}
      </div>
    </li>
  )
}

export default FactionMembersTile;
