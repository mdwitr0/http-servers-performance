import server from "bunrest";

const PORT = 3009;

const app = server();
app.listen(PORT, () => {
    console.log(`HTTP interface listen port: ${PORT}`)
});

app.get('/', (req, res) => {
    res.status(200).json({result: "Hello world"});
});