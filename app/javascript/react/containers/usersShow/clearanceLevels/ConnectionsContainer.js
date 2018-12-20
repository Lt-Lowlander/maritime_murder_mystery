import React, { Component } from 'react';

class ConnectionsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      viewer: {}
    };
  }

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}`, {
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
        viewer: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){

    return(
      <div>
later, joben
      </div>
    )
  }
}

export default ConnectionsContainer;
