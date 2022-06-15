const express = require('express')
const app = express()
const port = 3000

var morgan = require('morgan')


app.use(morgan('tiny'))

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/word', (req, res) => {
  res.send("Word")
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

