const PORT = 3007;

console.log(`HTTP interface listen port: ${PORT}`)

Bun.serve({
    fetch(req) {
        return Response.json({result: "Hello world"});
    },
    port: PORT,
});