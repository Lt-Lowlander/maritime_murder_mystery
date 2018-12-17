import React, { Component } from 'react';

class PartyIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      premise: ''
    }
  }

  componentDidMount(){
    fetch(`/api/v1/premises`, {
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
        premise: body[0].scene
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
      let beginning = this.state.premise
    return(
      <div>
        <b>
          Overview
        </b><br></br>
        <div className="">
          {beginning}
        </div>
      </div>
    )
  }
}

export default PartyIndexContainer;
