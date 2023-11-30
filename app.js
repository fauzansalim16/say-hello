const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello, world! iam from github, cool right?');
});

const port = 8080;
server.listen(port, () => {
    console.log(`Server berjalan di http://localhost:${port}`);
});
