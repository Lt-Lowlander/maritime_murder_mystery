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
      information: "",
      clearance: ""
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
        information: body.patron[0].char_info.info_desc,
        clearance: body.clearance
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("secrets").className = "secrets-hud presently";
    let output;
      if (this.state.clearance !== "character") {
        document.getElementById("navbar").style.display = "none";
        output =
        <div>
          Nice try, Private Eye!
        </div>
      } else {
        output=
          <div>
            <div className="page-heading">
              <div className="heading-icon">
                <i className="far fa-eye"></i>
              </div>
              <div className="heading-text cursive">
                SECRET and INFORMATION
              </div>
            </div>
            <div>
              <div className="blocky">
                Secret
              </div>
              <div className="deco">
                {this.state.secret}
              </div>
            </div>
            <div>
              <div className="blocky">
                Information
              </div>
              <div className="deco">
                {this.state.information}
              </div>
            </div>
          </div>

      }
    return(
      <div>
        {output}
      </div>
    )
  }
}

export default SecretsContainer;
