#!/usr/bin/env node

var path = require('path'),
    fs = require('fs'),
    YUI = require('yui').YUI,
    Y = YUI();

//Create the loader instance
var loader = new Y.Loader({
    //Setup the base path that your YUI files live in
    //Ignore all registered modules
    ignoreRegistered: true,
    base: './node_modules/yui/',
    groups: {
      mercury: {
        base: './scripts/',
        modules: {
          booking: {
            path: 'booking.js',
            requires: ['model']
          },
          bookingView: {
            path: 'booking_view.js',
            requires: ['view', 'node']
          },
          appView: {
            path: 'app_view.js',
            requires: ['view', 'booking', 'bookingView']
          }
        }
      }
    },
    //require node
    require: ['appView']
});

//Resolve these file (passing true calculates the dependencies for you)
var out = loader.resolve(true);

var str = [];

//Now walk the list of resolved files
out.js.forEach(function(file) {
    //Read the files
    str.push(fs.readFileSync(file, 'utf8'));
});

str.push(fs.readFileSync('./scripts/app.js', 'utf8'));

//Write all the files out into a single file
fs.writeFileSync('./combined.js', str.join('\n'), 'utf8');

