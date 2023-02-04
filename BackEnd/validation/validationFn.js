var validator = require('validator');

var validationFn = {


    //sanitize
    sanitize: function(req, res, next) {
        //Sanitize each record’s values from the database result   
        for (var i = 0; i < res.length; i++) {
            for (var key in res[i]) {
                res[i][key] = validator.escape(res[i][key]);
            }


        }
    }
}
module.exports = validationFn;