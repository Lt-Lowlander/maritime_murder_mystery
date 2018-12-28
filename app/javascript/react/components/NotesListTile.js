import React from 'react';
import { Link } from 'react-router';

let NotesListTile = (props) => {
  return(
    <li>
      <div>{props.contents}</div>
    </li>
  )
}

export default NotesListTile;
