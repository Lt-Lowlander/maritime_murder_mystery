import React, { Component } from 'react';
import LetterHeadTile from '../../components/LetterHeadTile';
import NotesListTile from '../../components/NotesListTile';
import NotesInputTile from '../../components/NotesInputTile';

class UsersStatusContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      viewer: "",
      player: "",
      clearance: "",
      patronData: {},
      value: "",
      notes: []
    };
    this.evenKeel=this.evenKeel.bind(this)
    this.handleChange=this.handleChange.bind(this)
    this.handlePost=this.handlePost.bind(this)
    this.updateNotes=this.updateNotes.bind(this)
  }

  evenKeel(hudBar){
    let patrol = document.getElementById(hudBar)
    if (patrol.style.display !== "flex") {
      patrol.style.display = "none"
    }
  }

  handleChange(event) {
    this.setState({value: event.target.value});
  }

  handlePost(event){
    event.preventDefault()
    const cluesPayload={
      note_contents: this.state.value,
      subject_id: this.state.patronData.id,
      author_id: this.state.player
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
        viewer: body.viewer,
        player: body.player,
        clearance: body.clearance,
        patronData: body.patron[0],
        notes: body.notes
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    document.getElementById("sea-dragon").className = "sleuthing";
    if (this.state.clearance === "character") {
      document.getElementById("status").className = "user-status presently";
      this.evenKeel("char-cons")
      this.evenKeel("divider")
    }
    const viewerClearance = this.state.clearance
    const letterHead =
      <LetterHeadTile
        key={this.state.patronData.id}
        position={this.state.patronData.position}
        group={this.state.patronData.faction_id}
        name={this.state.patronData.character}
      />
    const orderedNotes = this.state.notes.sort(function(a, b){return a.id - b.id});
    let notesList = orderedNotes.map(entry => {
        return(
          <NotesListTile
            key={entry.id}
            id={entry.id}
            player={this.state.player}
            author={entry.author_id}
            userUrl={parseInt(this.props.params.id)}
            contents={entry.note_contents}
            pOfIntId={entry.subject_id}
            pOfIntName={entry.subject_char}
            />
        )
      })
    const personalizedLetterHead =
      <div>
        {letterHead}
        <div className="page-heading">
          ({this.state.patronData.attendee})
        </div>
        <div>
          {this.state.patronData.title}
          <br/>
          {this.state.patronData.tagline}
        </div>
      </div>

    let doorman;
    if (viewerClearance == "gumshoe") {
      doorman =
        <div>
        {letterHead}
          <div className="patron-info deco marg1">
            <ul>
              <li>
                {this.state.patronData.title}
              </li>
              <li>
                {this.state.patronData.tagline}
              </li>
            </ul>
          </div>
          <div className="top-border">
            <img className="deco-corner top-left" src="/deco-corner.svg"></img>
            <img className="deco-corner top-right" src="/deco-corner.svg"></img>
          </div>
          <div className="heading-styler limey marg1">
            Notes:
          </div>
          <div className="list-and-entry marg1">
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
    }
    return(
      <div className="page-body">
        <div className="page-content">{doorman}</div>
        <div className="booster-thresh">you can do it!</div>
      </div>
    )
  }
}

export default UsersStatusContainer;
