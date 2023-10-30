const express = require('express')
const app = express()
const port = 3000
app.get('/', (req, res) => {
    res.json({"message": "My name is Aaron",
              "timestamp": Date.now()})
})

app.listen(port)