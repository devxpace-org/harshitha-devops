const express = require('express')
const app = express()
const port = 3000

app.get('/raja*', (req, res) => {
  res.send('Hi, This is Raja!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
