// loading express module with `require` directive
var express = require('express')

var app = express()

// defining response in root URL (/) with text Hello World!
app.get('/', function (req, res) {
  console.log('request received at : ', new Date().toISOString())
  res.send('Hello World!')
})

// launching server on port 8080
app.listen(8080, function () {
  console.log('app listening on port 8080!')
})