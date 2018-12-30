import React, { Component } from 'react';
import NotesListTile from '../../../components/NotesListTile';
import NotesInputTile from '../../../components/NotesInputTile';
import GumshoeTile from '../../../components/GumshoeTile';

class NotesContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      clearance: "",
      value: '',
      inspector: '',
      notes: []
    };
    this.handleChange=this.handleChange.bind(this)
    this.handlePost=this.handlePost.bind(this)
    this.updateNotes=this.updateNotes.bind(this)
  }

  handleChange(event) {
    this.setState({value: event.target.value});
  }

  handlePost(event){
    event.preventDefault()
    const cluesPayload={
      note_contents: this.state.value,
      subject_id: this.props.params.id,
      author_id: this.state.inspector
    }
    const traverse = `/api/v1/users/${this.props.params.id}/notes`
    const request = 'POST'
    this.updateNotes(cluesPayload, traverse, request)
  }

  updateNotes(payload, traverse, request){
    fetch(traverse, {
      headers: { 'Content-Type': 'application/json' },
      credentials: 'same-origin',
      method: request,
      body: JSON.stringify(payload)
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
        notes: body,
        value: ''
      })
    })
  }

  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}/notes`, {
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
        notes: body.notes,
        inspector: body.inspector
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
    document.getElementById("notes").className = "notes-hud presently";
    let doorman;
    const orderedNotes = this.state.notes.sort(function(a, b){return a.id - b.id});
    let notesList = orderedNotes.map(entry => {
      return(
        <NotesListTile
          key={entry.id}
          id={entry.id}
          author={entry.author_id}
          player={this.state.inspector}
          contents={entry.note_contents}
          pOfIntId={entry.subject_id}
          pOfIntName={entry.subject_char}
        />
      )
    })

    if (this.state.clearance === "character") {
      doorman =
        <div>
          <div className="page-heading">
            <div className="heading-icon">
              <i className="fas fa-search"></i>
            </div>
            <div className="heading-text limey">
              Notes
            </div>
          </div>
          <div className="sub-heading deco">
            Keep track of your clues, leads, and suspicions here
          </div>
          <div className="top-border">
            <img className="deco-corner top-left" src="/deco-corner.svg"></img>
            <img className="deco-corner top-right" src="/deco-corner.svg"></img>
          </div>
          <div className="list-and-entry">
            <ul className="list-of-notes deco">
              {notesList}
            </ul>
            <NotesInputTile
              value={this.state.value}
              handleChange={this.handleChange}
              handlePost={this.handlePost}
              />
          </div>
          <div className="bottom-border">
            <img className="deco-corner bottom-left" src="/deco-corner.svg"></img>
            <img className="deco-corner bottom-right" src="/deco-corner.svg"></img>
          </div>
        </div>
    } else if (this.state.clearance === "gumshoe") {
      doorman = <GumshoeTile/>
    }
    return(
      <div className="page-body">
        <div className="page-content">{doorman}</div>
        <div className="booster-thresh">you can do it!</div>
      </div>
    )
  }
}

export default NotesContainer;
