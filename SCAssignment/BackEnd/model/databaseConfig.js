var mysql = require('mysql');

var dbconnect = {
    getConnection: function() {
        var conn = mysql.createConnection({
            host: "localhost",
            user: "root",
            password: "spiepoly1234",
            database: "snapsell"
        });
        return conn;
    }
};

module.exports = dbconnect