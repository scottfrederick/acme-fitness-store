const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.use(express.static("public"));

app.get('/readyz', (req, res) => {
    res.sendStatus(200);
});

app.get('/livez', (req, res) => {
    res.sendStatus(200);
});

app.listen(port, () => {
    console.log(`Server started on port ${port}`);
});