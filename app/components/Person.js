import React from 'react-native'

const {
  NativeModules,
  Component
} = React;

var Person = NativeModules.Person;

Person.greeting('mac');

module.exports = Person;
