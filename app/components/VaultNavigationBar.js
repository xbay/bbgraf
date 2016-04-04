import React from 'react-native'
import _ from 'lodash'

const {
  View,
  Text,
  StyleSheet,
  requireNativeComponent,
  Component,
  PropTypes,
  Dimensions
} = React;

const {
  width,
  height
} = Dimensions.get('window')

var VaultNavigationBar  = requireNativeComponent('VaultNavigationBar',null);


class VaultNavigationView extends Component{
  // 构造
  constructor(props) {
    super(props);
    // 初始状态
    this.state = {};

    this.defaultProps = {
      backgroundColor: '#6FC0F6',
    };
    _.extend(this.defaultProps,this.props);
  }

  render(){
    return(
      <View>
        <VaultNavigationBar {...this.defaultProps} />
        <Text style={styles.title}>baby doodle</Text>
      </View>
    );
    // return <VaultNavigationBar backgroundColor="#6FC0F6" title={this.state.title}/>
  }
}

const styles = StyleSheet.create({
  title: {
    fontSize: 24,
    color: 'white',
    backgroundColor: 'transparent',
    textAlign: 'center',
    height:32,
    width: width,
    fontWeight: '400',
    top:30,
    position: 'absolute'
  },
});
/*
 * https://facebook.github.io/react/docs/reusable-components.html
 * propTypes
 */
VaultNavigationView.propTypes = {
  backgroundColor:React.PropTypes.string,
  title:React.PropTypes.string,
}



module.exports = VaultNavigationView;

