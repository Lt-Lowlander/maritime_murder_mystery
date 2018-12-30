import React from 'react';
import { Link } from 'react-router';

// similar to the project index tile
const FactionMembersTile = (props) => {
  let sleuth;
  let rank;
  if (props.position !=="") {
    rank =
    <span className="crew-position"> {props.position}</span>
  }
  if (props.viewer == "onboard") {
    if (props.viewerId === props.id) {
      sleuth =
        <span>(you)</span>
    } else {
      sleuth =
        <span>({props.attendee})</span>
    }
  }
  return(
    <li className="cast-member-tile deco marg2">
      <div>
        <Link className="char-cast" to={`/users/${props.id}`}>
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
