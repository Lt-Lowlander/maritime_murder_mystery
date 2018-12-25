import React, { Component } from 'react';
import NarrativeIndexTile from '../components/NarrativeIndexTile';

class PartyIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      viewer: "",
      narrative: []
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
    fetch(`/api/v1/narratives`, {
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
        narrative: body.narratives
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    let doorman;
    const lore = this.state.narrative;
    let story = lore.map(tale => {
      return(
        <NarrativeIndexTile
          key={tale.id}
          id={tale.id}
          heading={tale.heading}
          content={tale.content}
        />
      )
    })
    if (this.state.viewer === "onboard") {
      document.getElementById("sea-dragon").className = "libertania";
      document.getElementById("party").className = "party-hud presently";
      this.evenKeel("char-cons")
      this.evenKeel("divider")
      doorman =
      <div className="mystery-structure">
        <div className="page-heading marg1">
          <div className="heading-icon">
            <i className="fas fa-book-dead"></i>
          </div>
          <div className="heading-text limey">
            Narrative
          </div>
        </div>
        {story}
      </div>
    } else {
      doorman=
      <div className="limey">
        <div className="message-top">Anchors</div>
        <div className="message-bottom">Aweigh!</div>
      </div>
    }
    return(
      <div className="page-body">
        <div className="page-content">{doorman}</div>
        <div className="booster-thresh veiled">you can do it!</div>
      </div>
    )
  }
}

export default PartyIndexContainer;
