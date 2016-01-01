#!/usr/bin/env node

var electronPath = require( 'electron-prebuilt' ) ;
console.log(electronPath);

var childProcess = require( 'child_process' ) ;

// Adjust the command line arguments: remove the "node <code.js>" part
var args = process.argv.slice( 2 ) ;  
// ... and insert the root path of our application (it's the parent directory)
// as the first argument
args.unshift( __dirname + '/../' ) ;

// Run electron
childProcess.spawn( electronPath , args , { stdio: 'inherit' } ) ; 
