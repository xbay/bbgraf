import React from 'react-native'

const {
  requireNativeComponent,
  Component
} = React;


class RoundHeaderView extends Component{
  render(){
    return <HeaderView {...this.props} />
  }
}

var HeaderView  = requireNativeComponent('RoundHeaderView',null);

module.exports = RoundHeaderView;

