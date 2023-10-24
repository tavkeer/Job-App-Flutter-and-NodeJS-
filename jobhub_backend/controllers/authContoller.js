const User = require("../models/User");
const CryptoJS = require("crypto-js");

module.exports = {
  //register function
  createUser: async (req, res) => {
    const newUser = new User({
      username: req.body.username,
      email: req.body.email,

      password: CryptoJS.AES.encrypt(
        req.body.password,
        process.env.SECRETPHRASE
      ).toString(),
    });
    try {
      const savedUser = await newUser.save();
      res.status(201).json(savedUser);
    } catch (error) {
      res.status(500).json(error);
    }
  },

  //login function
  loginUser: async (req, res) => {
    try {
      const user = await User.findOne({ email: req.body.email });
      !user && res.status(401).json("Wrong login details");

      const deCryptPassword = CryptoJS.AES.decrypt(
        user.password,
        process.env.SECRETPHRASE
      );

      deCryptPassword.toString(CryptoJS.enc.Utf8) !== req.body.password &&
        res.status(401).json("Wrong Password");

      //sending only others ie except the listed fields
      const { password, __v, createdAt, ...others } = user._doc;
      res.status(200).json(others);
    } catch (error) {
      res.status(500).json(error);
    }
  },
};
