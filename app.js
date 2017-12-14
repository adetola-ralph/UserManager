var express = require('express');
var app = express();
var db = require('./db');
var morgan = require('morgan');

// logging user requests
app.use(morgan('dev'));

var UserController = require('./user/UserController');
app.use('/users', UserController);

module.exports = app;
