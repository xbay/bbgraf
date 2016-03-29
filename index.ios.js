/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';
import React from 'react-native';
import { createStore } from 'redux'
import MapView from './app/components/MapView'
import RoundHeaderView from './app/components/RoundHeaderView'

const {
    AppRegistry,
    Component,
    StyleSheet,
    Text,
    View,
    Navigator,
    Platform,
    TabBarIOS,
    TouchableHighlight,
  Dimensions
} = React;

const {
  width, height
} = Dimensions.get('window')

class babydoodle extends Component {
  render() {

    var region = {
      latitude: 37.48,
      longitude: -122.16,
      latitudeDelta: 0.1,
      longitudeDelta: 0.1,
    };

    return (

      <View style={styles.container}>
        <RoundHeaderView style={styles.mapView} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  mapView:{
    height: height/2,
    width: width
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('babydoodle', () => babydoodle);
