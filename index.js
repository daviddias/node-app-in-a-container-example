var Hapi = require('hapi');

var port = process.env.PORT || 8888;
console.log('PORT: ', port);

var server = new Hapi.Server(port);

var handler = function (request, reply) {
  reply.file('./index.html');
};

server.route({ method: 'GET', path: '/', handler: handler });

server.start(function () {
  console.log('Server started at: ' + server.info.uri);
});