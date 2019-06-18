# DOCKER MJML SERVER
If you want to fork it/pull request/report an issue , [here](https://github.com/MarcoMedrano/docker-mjml). Also there you can find a sample with a complete mjml request.

This image was made using [mjml-server](https://www.npmjs.com/package/mjml-server)

## Usage
```
docker run -d -p 28102:28102 marcomedrano/mjml
```

## Environment Variables

You can override these variables 
```
    HOST (defaults to 0.0.0.0)
    PORT (defaults to 28102)
```

## Test

```shell
curl -X POST http://localhost:28102 -d 'mjml={ "mjml": "<mjml><mj-body><mj-container><mj-section><mj-column><mj-text>Hello Nena!</mj-text></mj-column></mj-section></mj-container></mj-body></mjml>"}'
```
Or if u are node like:

First install
```terminal
    npm install request
```
Then 
```javascript
    var request = require('request');
    request.post({
        headers: {'content-type' : 'application/json'},
        url:     'http://localhost:28102',
        body:    'mjml={ "mjml": "<mjml><mj-body><mj-container><mj-section><mj-column><mj-text>Hello World!</mj-text></mj-column></mj-section></mj-container></mj-body></mjml>" }'
        }
        , function(error, response, body){
            console.log(body);
            console.error(error);
        }
    );
```