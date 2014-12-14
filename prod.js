var app = require('./base');

app.get("/", function (req, res) {
  res.redirect("/index.html");
});

module.exports = app;
