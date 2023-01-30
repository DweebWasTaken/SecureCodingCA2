var db = require('./databaseConfig.js');
var config = require('../config.js');
var jwt = require('jsonwebtoken');
var bcrypt = require('bcryptjs');

var userDB = {

    loginUser: function(email, password, callback) {

        var conn = db.getConnection();

        conn.connect(function(err) {
            if (err) {
                console.log(err);
                return callback(err, null);
            } else {
                console.log("Connected!");

                var sql = "SELECT * FROM user WHERE email = ?";

                conn.query(sql, [email], function(err, result) {
                    if (err) {

                        console.log(err);
                        return callback(err, null);
                    } else {

                        if (result.length == 1) { //1 rec retrieved since email is unique

                            const hashedPassword = result[0].password;
                            // Compare the provided password with the hashed password using bcrypt
                            bcrypt.compare(password, hashedPassword, function(err, match) {
                                if (err) {
                                    console.log(err);
                                    return callback(err, null);
                                } else if (match) {
                                    // passwords match
                                    var role = result[0].role;
                                    var username = result[0].username;
                                    var token = jwt.sign({ "role": role, "username": username }, config.JWTKey, { expiresIn: 86400 });

                                    console.log("It works | Password: " + password + " hashedass: " + hashedPassword);
                                    return callback(null, token);
                                } else {
                                    // passwords do not match
                                    return callback(null, null);
                                }
                            });

                        } else {

                            //login wrong...
                            return callback(null, null);

                        }

                    }

                });

            }

        });

    },



    updateUser: function(username, firstname, lastname, id, callback) {

        var conn = db.getConnection();
        conn.connect(function(err) {
            if (err) {
                console.log(err);
                return callback(err, null);
            } else {
                console.log("Connected!");

                var sql = "update users set username = ?,firstname = ?,lastname = ? where id = ?;";

                conn.query(sql, [username, firstname, lastname, id], function(err, result) {
                    conn.end();

                    if (err) {
                        console.log(err);
                        return callback(err, null);
                    } else {
                        console.log("No. of records updated successfully: " + result.affectedRows);
                        return callback(null, result.affectedRows);
                    }
                })
            }
        })
    },

    addUser: function(username, email, password, profile_pic_url, role, callback) {

        var conn = db.getConnection();
        bcrypt.hash(password, 10, function(err, hash) {
            conn.connect(function(err) {
                if (err) {
                    console.log(err);
                    return callback(err, null);
                } else {


                    console.log("Connected!");
                    var sql = "Insert into users(username,email,password,profile_pic_url,role) values(?,?,?,?,?)";
                    conn.query(sql, [username, email, hash, profile_pic_url, role], function(err, result) {
                        conn.end();

                        if (err) {
                            console.log(err);
                            return callback(err, null);
                        } else {
                            return callback(null, result);
                        }

                    })
                }
            })
        })
    }
}




module.exports = userDB;
module.exports = userDB;