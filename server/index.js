const express = require('express');
const app = express();
const cors = require('cors');

app.use(cors());
app.use(express.json());

const uploadRoute = require('./routes/Upload')
app.use('/upload', uploadRoute);

app.listen(3002, (req, res) => {
  console.log("Server running..");
});
