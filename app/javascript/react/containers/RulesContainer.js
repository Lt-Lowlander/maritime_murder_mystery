import React, { Component } from 'react';
import RulesIndexTile from '../components/RulesIndexTile';

class RulesContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      viewer: "",
      rules: []
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
        viewer: body.viewer,
        rules: body.rules
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "libertania";
    if (this.state.viewer === "onboard") {
      document.getElementById("rules").className = "rules-hud presently";
      this.evenKeel("char-cons")
      this.evenKeel("divider")
    }
    const orderedRegs = this.state.rules.sort(function(a, b){return a.id - b.id});
    let structure = orderedRegs.map(regl => {
      return(
        <RulesIndexTile
          key={regl.id}
          id={regl.id}
          ruleName={regl.rule_name}
          ruleDesc={regl.rule_desc}
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
            Rules
          </div>
        </div>
        <div>
          {structure}
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

export default RulesContainer;
