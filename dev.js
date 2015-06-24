var app = require('./base');
var express = require('express');

app.use('/', express.static(__dirname + '/public'));


module.exports = app;
