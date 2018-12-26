import React, { Component } from 'react';
import PowerCellsTile from './PowerCellsTile'
class AbilitiesIndexComponent extends Component {
  constructor(props) {
    super(props)
    this.state = {
    }
  }

  render(){
    const charges = this.props.cells.map(shocks => {
      return(
        <PowerCellsTile
          key={shocks.id}
          id={shocks.id}
          zap={shocks.consumed}
          update={shocks.updateUsage}
        />
      );
    })
    const powerTotal = (this.props.cells.length)

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
          <div className="fuel-cap">
            Charges:
          </div>
          <div className="alt-fuel">
            {charges}
          </div>
        </div>
      </div>
    )
  }
}

export default AbilitiesIndexComponent;
