import React, { Component } from 'react';
import FactionMembersTile from './factionMembers/FactionMembersTile';

class FactionsIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
    }
  }

  render(){
    let group_symbol;
      if (this.props.group === "Crew") {
        group_symbol = <i className="fas fa-dharmachakra"></i>
      } else if (this.props.group === "Passengers") {
        group_symbol = <i className="fas fa-cocktail"></i>
      }
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
        <div>
          {this.props.group} {group_symbol}
          <ul>
            {constituents}
          </ul>
        </div>
    )
  }
}

export default FactionsIndexContainer;
