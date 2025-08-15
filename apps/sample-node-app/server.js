const http = require('http');
const port = process.env.PORT || 8080;
const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'application/json'});
  res.end(JSON.stringify({ ok: true, message: 'Hello from GKE!', time: new Date().toISOString() }));
});
server.listen(port, () => console.log(`Server listening on ${port}`));