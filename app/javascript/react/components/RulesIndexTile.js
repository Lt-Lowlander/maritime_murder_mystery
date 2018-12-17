import React from 'react';

const RulesIndexTile = (props) => {
  return(
    <div className="rule-index-tile">
      <div className="rule-name">
        {props.ruleName}:
      </div>
      <div className="rule-desc">
        {props.ruleDesc}
      </div>
    </div>
  )
}

export default RulesIndexTile;
