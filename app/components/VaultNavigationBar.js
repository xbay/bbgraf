import React from 'react-native'
import _ from 'lodash'
import Icon from 'react-native-vector-icons/MaterialIcons'


const {
  TouchableOpacity,
  View,
  Text,
  StyleSheet,
  requireNativeComponent,
  Component,
  PropTypes,
  Dimensions,
  Platform
} = React;

const {
  width,
  height
} = Dimensions.get('window')

const NAV_BAR_HEIGHT = 68
const STATUS_BAR_HEIGHT = 20


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


  _defaultOnPress(){

  }

  getNavBarBackButton() {
    if (this.props.config.back) {
      let backButtonInfo = this.props.config.back
      return (
        <TouchableOpacity onPress={backButtonInfo.onPress} style={[styles.button, styles.backButton]}>
          <Icon name="keyboard-arrow-left" style={[styles.buttonIcon, styles.backButtonIcon]} size={30}/>
          <Text style={[styles.buttonText, styles.backButtonText]}>{backButtonInfo.text}</Text>
        </TouchableOpacity>
      )
    } else {
      return (<View></View>)
    }
  }

  getNavBarForwardButton() {
    if (this.props.config.forward) {
      let forwardButtonInfo = this.props.config.forward
      return (
        <TouchableOpacity onPress={forwardButtonInfo.onPress} style={[styles.button, styles.forwardButton]}>
          <Text style={[styles.buttonText]}>{forwardButtonInfo.text}</Text>
        </TouchableOpacity>
      )
    } else {
      return (<View></View>)
    }
  }

  render(){
    return(
      <View style={styles.navBar}>
        <VaultNavigationBar style={styles.vaultBG} {...this.defaultProps} />
        <View style={styles.navContext}>
          <Text style={styles.navTitle}>baby doodle</Text>
          {this.getNavBarBackButton()}
          {this.getNavBarForwardButton()}
        </View>
      </View>
    );
    // return <VaultNavigationBar backgroundColor="#6FC0F6" title={this.state.title}/>
  }
}

const styles = StyleSheet.create({
  navBar: {
    height: NAV_BAR_HEIGHT+STATUS_BAR_HEIGHT,
  },
  vaultBG:{

  },
  navContext:{
    top:30,
    position: 'absolute',
    flexDirection:'column',
    justifyContent: 'space-between',
    width: width,
    backgroundColor:'transparent'
  },
  navTitle:{
    fontSize: 24,
    textAlign: 'center',
    fontWeight: '400',
    color: 'white',
    flex:1
  }
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

