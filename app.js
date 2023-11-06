// Load express module
const express = require('express')
// Create instance of express application
const app = express()
// App will listen onto port 80
const port = 80
// Send JSON response with message and timestamp
app.get('/', (req, res) => {
    res.json({"message": "My name is Aaron",
              "timestamp": Date.now(),
              "fullname": "Aaron Michael David"})
})

app.listen(port)
