var express = require('express'),
    bodyParser = require('body-parser');
app = express();
app.use( bodyParser.urlencoded({extended: true}) );

var port = 80;

app.post( /.*/, function (req, res) {
    console.log(req.body);
    res.status(200).send();
} );

app.listen(port);
