import React, { Component } from 'react';
import FactionsIndexContainer from './factionsIndex/FactionsIndexContainer';

class ManifestContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
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
        manifest: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    let socialGroups = this.state.manifest;
    let factions = socialGroups.map( clique => {
      return(
        < FactionsIndexContainer
          key={clique.id}
          id={clique.id}
          group={clique.fac_name}
          sign={clique.fac_sign}
          members={clique.users}
        />
      )
    })
    return(
      <div>
        {factions}
      </div>
    )
  }
}

export default ManifestContainer;
