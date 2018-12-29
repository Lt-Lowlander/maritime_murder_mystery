import React from 'react';

const NotesInputTile = (props) => {
  return (
    <div className="notes-entry-form deco">
      <form onSubmit={props.handlePost} className="">
        <div className="lbldv">
          <label className="writing-rectangle"></label>
          <input
            type="text"
            value={props.value}
            onChange={props.handleChange}
            />
        </div>
        <div className="send-clicker">
          <input type="submit" value="Add Info"/>
        </div>
      </form>
    </div>
  );
}

export default NotesInputTile;
