import React, { Component } from 'react';

class ManifestContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
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
debugger
      this.setState({
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    return(
      <div>
        "manifest"
      </div>
    )
  }
}

export default ManifestContainer;
