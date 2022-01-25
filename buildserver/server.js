const express = require('express')
const app = express()
const port = 3000

// add web folder path created after flutter build
app.use(express.static('./../build/web'))

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})