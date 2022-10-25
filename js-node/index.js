import cluster from 'node:cluster';
import http from 'node:http';
import { cpus } from 'node:os';

const PORT = 3010;

const requestListener = function (req, res) {
    res.writeHead(200);
    res.end("Hello world");
}

const server = http.createServer(requestListener);
console.log(`HTTP interface listen port: ${PORT}`)
server.listen(PORT);