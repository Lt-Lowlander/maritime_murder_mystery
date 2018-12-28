import React, { Component } from 'react';
import FactionMembersTile from './factionMembers/FactionMembersTile';
import GroupSymbolTile from '../../../components/GroupSymbolTile';

class FactionsIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
    }
  }

  render(){
    let orderedGroup = this.props.members.sort(function(a, b){return a.id - b.id});
    let constituents = orderedGroup.map( indiv => {
      let rank;
      if (indiv.position !== null) {
        rank = indiv.position;
      } else {
        rank = "";
      }
      return(
        <FactionMembersTile
          key={indiv.id}
          id={indiv.id}
          viewerId={this.props.viewerId}
          viewer={this.props.viewer}
          role={indiv.role}
          attendee={indiv.attendee}
          character={indiv.character}
          position={rank}
          title={indiv.title}
          tagline={indiv.tagline}
        />
      )
    })

    return(
      <div className="limey marg1">
        <div className="faction-headings">
          {this.props.group}
          <span>  </span>
          <GroupSymbolTile
            group={this.props.id}
            />
        </div>
        <ul className="ledgerlist">
          {constituents}
        </ul>
      </div>
    )
  }
}

export default FactionsIndexContainer;
