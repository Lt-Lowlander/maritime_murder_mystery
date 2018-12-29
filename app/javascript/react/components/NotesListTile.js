import React from 'react';
import { Link } from 'react-router';

const NotesListTile = (props) => {
  let recordedClue;
  if (props.player === props.author ) {
    if ((props.author === props.pOfIntId) || (props.userUrl === props.pOfIntId)) {
      recordedClue=
      <div>{props.contents}</div>
    } else {
      recordedClue =
      <div>
        <div className="note-name-link">
          <Link className="char-cast" to={`/users/${props.pOfIntId}`}>{props.pOfIntName}
          </Link><span>: </span>
        </div>
        <div className="note-body">
          {props.contents}
        </div>
      </div>
    }
  } else {
    recordedClue = <div></div>
  }
  // props.userUrl (:id number of the person whose page you're viewing)
  // props.author (author_id)
  // props.pOfIntId (subject_id)
  // props.pOfIntName (subject_char)
  // props.contents (note_contents)
  return(
    <li>
      {recordedClue}
    </li>
  )
}

export default NotesListTile;
