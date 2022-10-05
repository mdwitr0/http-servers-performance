const http = require('http');

const PORT = 3010;

const requestListener = function (req, res) {
    res.writeHead(200);
    res.end("Hello world");
}

const server = http.createServer(requestListener);
console.log(`HTTP interface listen port: ${PORT}`)
server.listen(PORT);