import React, { Component } from 'react';
import FactionsIndexContainer from './factionsIndex/FactionsIndexContainer';

class ManifestContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      viewer: "",
      manifest: []
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
    return(
      <div>
        <div className="page-heading">
          <i className="fas fa-address-book"></i> Manifest
        </div>
        {factions}
      </div>
    )
  }
}

export default ManifestContainer;
