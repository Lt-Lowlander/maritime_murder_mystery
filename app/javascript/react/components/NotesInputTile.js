import React from 'react';

const NotesInputTile = (props) => {
  return (
    <label htmlFor={props.name}>{props.label}
      <input
        name={props.name}
        type='text'
        value={props.contents}
        onChange={props.changing}
      />
    </label>
  );
}

export default NotesInputTile;
