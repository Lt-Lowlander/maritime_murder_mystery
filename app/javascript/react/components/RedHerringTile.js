import React from 'react';

const RedHerringTile = (props) => {
  document.getElementById("navbar").className = "hide";
  return(
    <div className="standard-issue">
      <img className="misnomer" src="./assets/suspect.gif"></img>
    </div>
  )
}

export default RedHerringTile;
