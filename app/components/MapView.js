import React from 'react-native'

const {
  requireNativeComponent,
  Component
} = React;


class MapView extends Component{
  render(){
    return <RCTMap {...this.props} />
  }
}

MapView.propTypes = {
  pitchEnabled: React.PropTypes.bool,
}


var RCTMap  = requireNativeComponent('RCTBDMap',null);



module.exports = MapView;

