import React, { Component } from 'react';
import LetterHeadTile from '../../../components/LetterHeadTile';

class SecretsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      position: "",
      group: "",
      name: "",
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
        patronId: body.patron[0].id,
        position: body.patron[0].position,
        group: body.patron[0].faction_id,
        name: body.patron[0].character,
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("secrets").className = "secrets-hud presently";
    return(
      <div>
        <LetterHeadTile
          key={this.state.patronId}
          position={this.state.position}
          group={this.state.group}
          name={this.state.name}
          />
        <div className="page-heading">
          <div className="heading-icon">
            <i className="far fa-eye"></i>
          </div>
          <div className="heading-text">
            Secret and Information
          </div>
        </div>
I call them 'bowsers'
      </div>
    )
  }
}

export default SecretsContainer;
