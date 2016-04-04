import React from 'react-native'

const {
  requireNativeComponent,
  Component
} = React;


class VaultNavigationBar extends Component{
  render(){
    return <ModuleVaultNavigationBar {...this.props} />
  }
}

var ModuleVaultNavigationBar  = requireNativeComponent('VaultNavigationBar',null);

module.exports = VaultNavigationBar;

