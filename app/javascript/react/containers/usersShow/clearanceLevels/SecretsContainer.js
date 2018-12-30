import React, { Component } from 'react';
import GumshoeTile from '../../../components/GumshoeTile';

class SecretsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      secret: "",
      clue: "",
      clearance: "",
    };
    this.shareSecretToggle=this.shareSecretToggle.bind(this)
    this.shareClueToggle=this.shareClueToggle.bind(this)
  }

  shareSecretToggle(event){
    event.preventDefault()
    var navDisp = document.getElementById("navbar");
    var eye = document.getElementById("eye");
    var secHeadDisp = document.getElementById("secHeading");
    var subHeadDisp = document.getElementById("secSubHeading");
    var clueDisp = document.getElementById("clueTile");
    var b1 = document.getElementById("b1");
    var b2 = document.getElementById("b2");
    var b3 = document.getElementById("b3");
    if (clueDisp.style.display === "") {
      clueDisp.style.display = "none";
      eye.style.display = "none";
      navDisp.style.display = "none";
      secHeadDisp.style.display = "none";
      subHeadDisp.style.display = "none";
      b1.className ="bg-first presently"
      b2.className ="bg-second presently"
      b3.className ="bg-third presently"
    } else {
      clueDisp.style.display = "";
      eye.style.display = "";
      navDisp.style.display = "";
      secHeadDisp.style.display = "";
      subHeadDisp.style.display = "";
      b1.className ="bg-first"
      b2.className ="bg-second"
      b3.className ="bg-third"
    }
  }
  shareClueToggle(event){
    event.preventDefault()
    var navDisp = document.getElementById("navbar");
    var eye = document.getElementById("eye");
    var secHeadDisp = document.getElementById("secHeading");
    var subHeadDisp = document.getElementById("secSubHeading");
    var secDisp = document.getElementById("secretTile");
    var b1 = document.getElementById("b1");
    var b2 = document.getElementById("b2");
    var b3 = document.getElementById("b3");
    if (secDisp.style.display === "") {
      secDisp.style.display = "none";
      eye.style.display = "none";
      navDisp.style.display = "none";
      secHeadDisp.style.display = "none";
      subHeadDisp.style.display = "none";
      b1.className ="bg-first presently"
      b2.className ="bg-second presently"
      b3.className ="bg-third presently"
    } else {
      secDisp.style.display = "";
      eye.style.display = "";
      navDisp.style.display = "";
      secHeadDisp.style.display = "";
      subHeadDisp.style.display = "";
      b1.className ="bg-first"
      b2.className ="bg-second"
      b3.className ="bg-third"
    }
  }

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}/secrets`, {
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
        clearance: body.clearance,
        secret: body.char_secret[0].sec_desc,
        clue: body.char_info[0].info_desc
      })

    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
    document.getElementById("secrets").className = "secrets-hud presently";
    let doorman;
      if (this.state.clearance === "character") {
        doorman=
        <div>
          <div className="page-heading marg3">
            <div id="eye" className="heading-icon">
              <i className="far fa-eye"></i>
            </div>
            <div id="secHeading" className="heading-text limey">
              Secret and Clue
            </div>
          </div>
          <i id="secSubHeading" className="deco marg2">
            Tap on an individual item to hide the rest of the page when sharing info
          </i>
          <div className="vert-spacer">.</div>
          <div className="tile-centering">
            <div id="secretTile" className="contain" onClick={this.shareSecretToggle}>
              <div id="romanBorder" className="roman-border">
                  <span id="b1" className="bg-first"></span>
                  <span id="b2" className="bg-second"></span>
                  <span id="b3" className="bg-third"></span>
                  <div>
                    <div className="limey">
                      Secret
                    </div>
                    <div className="secret-text deco">
                      {this.state.secret}
                    </div>
                  </div>
              </div>
            </div>
            <div className="vert-spacer">.</div>
            <div id="clueTile" className="contain" onClick={this.shareClueToggle}>
              <div id="romanBorder" className="roman-border">
                  <span id="b1" className="bg-first"></span>
                  <span id="b2" className="bg-second"></span>
                  <span id="b3" className="bg-third"></span>
                  <div>
                    <div className="limey">
                      Clue
                    </div>
                    <div className="secret-text deco">
                      {this.state.clue}
                    </div>
                  </div>
              </div>
            </div>
          </div>
        </div>
      } else if (this.state.clearance === "gumshoe") {
        doorman =
          <GumshoeTile/>
      }
    return(
      <div className="page-body">
        <div className="page-content">{doorman}</div>
        <div className="booster-thresh">you can do it!</div>
      </div>
    )
  }
}

export default SecretsContainer;
