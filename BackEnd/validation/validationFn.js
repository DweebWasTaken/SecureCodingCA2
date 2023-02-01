var validator = require('validator');

var validationFn = {

    validateUserid: function(req, res, next) {
        //Validation code to check userid from req.params
        //return response with status 500 if validation fails

        var userid = req.params.userid;

        if (!validator.isAlphanumeric(userid)) {
            res.status(500);
            res.send(`{"message":"Internal Server Error"}`);
        } else {
            next();
        }

    },
    sanitizeResult: function(result) {

        //Sanitize each record’s values from the database result   


        for (let i = 0; i < result.length; i++) {
            for (let key in result[i]) {
                if (typeof result[i][key] === 'string') {
                    result[i][key] = validator.escape(result[i][key]);
                    result[i][key] = validator.trim(result[i][key]);
                }
            }
        }
        return result;


    }
}

module.exports = validationFn;