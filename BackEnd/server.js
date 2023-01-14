var express = require('express');
var serveStatic = require('serve-static');
var app = require('./controller/app.js');
const https = require('https');
const fs = require('fs');
const path = require('path');

var port = 8081;

app.use(serveStatic(__dirname + '/public'));

var server = app.listen(port, function() {
    console.log('Web App Hosted at http://localhost:%s', port);
});

var app = require('./controller/app.js');