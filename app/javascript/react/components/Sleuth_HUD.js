import React from 'react';
import { Link } from 'react-router'

const Sleuth_HUD = props => {
  document.getElementById("navbar").className = "hide";
  return(
    <div className="sleuth-hud">
      <Link to='/party'>
        <i className="fas fa-book-dead"></i>
      </Link>
      <Link to='/factions'>
        <i className="fas fa-address-book"></i>
      </Link>
      <Link to='/rules'>
        <i className="fas fa-anchor"></i>
      </Link>
    </div>
  )
}

export default Sleuth_HUD;
