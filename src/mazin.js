const express = require('express')
const app = express()
const port = 3000

app.get('/mazin*', (req, res) => {
  res.send('Hi, This is Mazin!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
