const express = require("express");
const app = express();
const mongoose = require("mongoose");
const dotenv = require("dotenv");
const authRoute = require("./routes/auth");

dotenv.config();

mongoose
  .connect(process.env.MONGO_URL, {})
  .then(() => console.log("DB Connected"))
  .catch((e) => {
    console.log(e);
  });

app.use(express.json());
app.use("/api/", authRoute);

//use: localhost:5001/api/register

app.listen(process.env.PORT || 5001, () =>
  console.log(`Example app listening on port ${process.env.PORT || 5001}!`)
);
