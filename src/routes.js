var Path = require('path');

module.exports = [

    {
        method: 'GET',
        path: '/test',
        handler: function (request, reply) {
            var response = reply('Hello EMC Day!');
            console.log("GET request to /test");
            return response;
        }
    },

    {
        method: 'GET',
        path: '/{param*}',
        handler: {
            directory: {
                path: 'static',  // make sure you run <node> from the <server> folder
                index: true,
                listing: true
            }
        }
    },

];
