import React, { Component } from 'react';

class SecretsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      patronId: "",
      position: "",
      group: "",
      name: "",
      secret: "",
      information: ""
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
        secret: body.patron[0].char_secret.sec_desc,
        information: body.patron[0].char_info.info_desc
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("secrets").className = "secrets-hud presently";
    return(
      <div>
        <div className="page-heading">
          <div className="heading-icon">
            <i className="far fa-eye"></i>
          </div>
          <div className="heading-text">
            Secret and Information
          </div>
        </div>
        <div>
          <div>
            Secret
          </div>
          <div>
            {this.state.secret}
          </div>
        </div>
        <div>
          <div>
            Information
          </div>
          <div>
            {this.state.information}
          </div>
        </div>
      </div>
    )
  }
}

export default SecretsContainer;
