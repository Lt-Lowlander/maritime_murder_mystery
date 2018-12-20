import React, { Component } from 'react';
import NarrativeIndexTile from '../components/NarrativeIndexTile';

class PartyIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      narrative: []
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
        narrative: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
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
    return(
      <div className="">
        <div className="page-heading">
          <i className="fas fa-book-dead"></i> Story
        </div>
        {story}
      </div>
    )
  }
}

export default PartyIndexContainer;
