import React, { Component } from 'react';
import AbilitiesPotentialTile from './AbilitiesPotentialTile';
import AbilitiesExpiredTile from './AbilitiesExpiredTile';

class AbilitiesIndexComponent extends Component {
  constructor(props) {
    super(props)
    this.state = {
    }
    this.consumption=this.consumption.bind(this)
    this.regeneration=this.regeneration.bind(this)
  }

  consumption(event){
    event.preventDefault();
    const perishablePayload = {
      quant_left: this.props.remaining - 1,
      quant_used: this.props.consumed + 1
    }
    const traverse = `/api/v1/users/${this.props.userId}/abilities/${this.props.id}.json`
    this.props.updateUsage(perishablePayload, traverse);
  }

  regeneration(event){
    event.preventDefault();
    const perishablePayload = {
      quant_left: this.props.remaining + 1,
      quant_used: this.props.consumed - 1
    }
    const traverse = `/api/v1/users/${this.props.userId}/abilities/${this.props.id}.json`
    this.props.updateUsage(perishablePayload, traverse);
  }

  render(){
    let powercell;
    let potential = [];
    let expired = [];
    for (var i = 0; i < this.props.remaining; i++) { potential.push(i); }
    for (var i = 0; i < this.props.consumed; i++) { expired.push(i); }

    const loaded = potential.map(ion => {
      return(
        <AbilitiesPotentialTile
          key={ion}
          use={this.consumption}
          />
      )
    })
    const decomp = expired.map(depl => {
      return(
        <AbilitiesExpiredTile
          key={depl}
          regen={this.regeneration}
          />
      )
    })

    if (potential.length + expired.length === this.props.charges) {
      powercell =
        <div className="alt-tank">
          {decomp}
          <span></span>
          {loaded}
        </div>
    }
    return(
      <div className="ability-index-tile marg1">
        <div className="ability-title-and-desc">
          <div className="ability-name limey">
            {this.props.name}:
          </div>
          <div className="ability-desc deco">
            {this.props.desc}
          </div>
        </div>
        <div className="alt-tank deco">
          <div className="fuel-space">
            Charges:
          </div>
          <div className="air-space">
            {powercell}
          </div>
        </div>
      </div>
    )
  }
}

export default AbilitiesIndexComponent;
