var app = require('./base');
var express = require('express');

app.get("/", function (req, res) {
  res.redirect("/docs/index.html");
});
app.use('/docs', express.static(__dirname + '/public_prod'));


module.exports = app;
