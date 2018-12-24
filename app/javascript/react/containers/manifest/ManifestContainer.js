import React, { Component } from 'react';
import FactionsIndexContainer from './factionsIndex/FactionsIndexContainer';

class ManifestContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      viewer: "",
      manifest: []
    }
    this.evenKeel = this.evenKeel.bind(this)
  }

  evenKeel(hudBar){
    let patrol = document.getElementById(hudBar)
    if (patrol.style.display !== "flex") {
      patrol.style.display = "none"
    }
  }

  componentDidMount(){
    fetch(`/api/v1/factions`, {
      credentials: 'same-origin'
    })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({
        manifest: body.factions,
        viewer: body.viewer
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "libertania";
    if (this.state.viewer === "onboard") {
      document.getElementById("manifest").className = "manifest-hud presently";
      this.evenKeel("char-cons")
    }
    let socialGroups = this.state.manifest;
    let factions = socialGroups.map( clique => {
      return(
        <FactionsIndexContainer
          key={clique.id}
          id={clique.id}
          viewer={this.state.viewer}
          group={clique.fac_name}
          sign={clique.fac_sign}
          members={clique.users}

        />
      )
    })
    const doorman =
      <div className="mystery-structure">
        <div className="page-heading marg1">
          <div className="heading-icon">
            <i className="far fa-compass"></i>
          </div>
          <div className="heading-text limey">
            Manifest
          </div>
        </div>
        <div>
          {factions}
        </div>
      </div>
    return(
      <div className="page-body">
        <div className="page-content">{doorman}</div>
        <div className="booster-thresh">you can do it!</div>
      </div>
    )
  }
}

export default ManifestContainer;
