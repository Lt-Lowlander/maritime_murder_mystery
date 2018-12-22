import React from 'react';

const GumshoeTile = (props) => {
  document.getElementById("navbar").style.display = "none";
  return(
    <div className="gumshoe-heading limey">
      <div>
        Nice Try
      </div>
      <div className="gumshoe">
        <i className="fas fa-user-secret"></i>
      </div>
      <div>
        Private Eye
      </div>
    </div>
  )
}

export default GumshoeTile;
