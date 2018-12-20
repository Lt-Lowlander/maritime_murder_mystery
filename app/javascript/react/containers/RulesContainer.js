import React, { Component } from 'react';
import RulesIndexTile from '../components/RulesIndexTile';

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
      const regulations = this.state.rules;
      let structure = regulations.map(regl => {
        return(
          <RulesIndexTile
            key={regl.id}
            id={regl.id}
            ruleName={regl.rule_name}
            ruleDesc={regl.rule_desc}
          />
        )
      })
    return(
      <div className="rules-heading">
        <div className="page-heading">
          <i className="far fa-compass"></i> Rules
        </div>
        <div>
          {structure}
        </div>
      </div>
    )
  }
}

export default RulesContainer;
