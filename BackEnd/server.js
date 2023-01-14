var express = require('express');
var serveStatic = require('serve-static');
var app = require('./controller/app.js');
const https = require('https');
const fs = require('fs');

// This line is from the Node.js HTTPS documentation.
var options = {
    key: fs.readFileSync('test/fixtures/keys/agent2-key.pem'),
    cert: fs.readFileSync('test/fixtures/keys/agent2-cert.cert')
};
// Create an HTTPS service identical to the HTTP service.

var port = 8081;

app.use(serveStatic(__dirname + '/public'));

var server = app.listen(port, function() {
    console.log('Web App Hosted at http://localhost:%s', port);
});

var app = require('./controller/app.js');

https.createServer(options, app).listen(443);