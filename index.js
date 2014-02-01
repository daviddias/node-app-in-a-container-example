var Hapi = require('hapi');

var port = process.env.PORT || 8888;

var server = new Hapi.Server(port);

var handler = function (request, reply) {
  console.log('woot, got a request');
  reply.file(__dirname + '/index.html');
};

server.route({ method: 'GET', path: '/', handler: handler });

server.start(function () {
  console.log('Server started at: ' + server.info.uri);
});
