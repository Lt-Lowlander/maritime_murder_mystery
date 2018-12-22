import React from 'react';

const RulesIndexTile = (props) => {
  return(
    <div className="rule-index-tile marg1">
      <div className="rule-name limey">
        {props.ruleName}:
      </div>
      <div className="rule-desc deco">
        {props.ruleDesc}
      </div>
    </div>
  )
}

export default RulesIndexTile;
