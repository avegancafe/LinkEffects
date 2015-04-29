var express = require('express');
app = express();

var port = 80;

app.get(/.*/, function (req, res) {
    console.log(req.query);
    res.status(200).send();
}

app.listen(port);
