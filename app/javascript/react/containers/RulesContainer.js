import React, { Component } from 'react';

class RulesContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      rules: []
    }
  }

  componentDidMount(){
    fetch(`/api/v1/rules`, {
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
        rules: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
      let structure = this.state.rules
    return(
      <div>
        <b>
          Rules
        </b><br></br>
        <div className="">
          {structure}
        </div>
      </div>
    )
  }
}

export default RulesContainer;
