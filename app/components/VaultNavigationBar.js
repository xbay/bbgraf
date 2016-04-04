import React from 'react-native'
import _ from 'lodash'

const {
  requireNativeComponent,
  Component,
  PropTypes
} = React;
var VaultNavigationBar  = requireNativeComponent('VaultNavigationBar',null);


class VaultNavigationView extends Component{
  // 构造
  constructor(props) {
    super(props);
    // 初始状态
    this.state = {
      backgroundColor: '#6FC0F6',
      title: 'baby doodle'
    };

    _.merge(this.props, {
      backgroundColor: '#6FC0F6',
      title: 'baby doodle'
    })
    
    this.props.backgroundColor = '#6FC0F6';
    console.log('this.props',this.props);

  }

  render(){
    return <VaultNavigationBar {...this.props} />
    // return <VaultNavigationBar backgroundColor="#6FC0F6" title={this.state.title}/>
  }
}

/*
 * https://facebook.github.io/react/docs/reusable-components.html
 * propTypes
 */
VaultNavigationView.propTypes = {
  backgroundColor:React.PropTypes.string,
  title:React.PropTypes.string,
}



module.exports = VaultNavigationView;

