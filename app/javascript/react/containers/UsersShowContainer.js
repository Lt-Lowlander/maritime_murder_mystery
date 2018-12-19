import React, { Component } from 'react';

class UsersShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      userData: {}
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
        userData: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    return(
      <div className="">
        Whaddup, dog!
      </div>
    )
  }
}

export default UsersShowContainer;
