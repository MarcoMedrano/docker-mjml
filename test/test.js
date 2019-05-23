var request = require('request');
request.post({
  headers: {'content-type' : 'application/json'},
  url:     'http://localhost:28102',
  body:    'mjml={ "mjml": "<mjml></mjml>" }'
}, function(error, response, body){
  console.log(body);
  console.error(error);
});