/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';
import React from 'react-native';
import { createStore } from 'redux'
import Person from './app/components/Person'
import VaultNavigationBar from './app/components/VaultNavigationBar'

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

    Person.greeting('peter');

    return (

      <View style={styles.container}>
        <VaultNavigationBar config={{title: '',logout:true}} />
        <View style={styles.welcome}>
          <Text>Keep Clam and Carry On.</Text>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'flex-start',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    backgroundColor: '#eeeeee',
    flex:1
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('babydoodle', () => babydoodle);
