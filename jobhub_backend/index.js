const express = require('express');
const app = express();
const mongoose = require('mongoose');
const dotenv = require('dotenv');

dotenv.config();

mongoose
  .connect(process.env.MONGO_URL, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then(() => console.log('DB Connected'))
  .catch((e) => {
    console.log(e);
  });

app.get('/', (req, res) => res.send('Hello World!'));

const port = process.env.PORT || 5001;
app.listen(port, () => console.log(`Example app listening on port ${port}!`));
