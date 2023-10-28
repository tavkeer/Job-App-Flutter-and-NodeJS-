const User = require("../models/User");
const CryptoJS = require("crypto-js");
module.exports = {
  updateUser: async (req, res) => {
    if (req.body.password) {
      req.body.password = CryptoJS.AES.encrypt(
        req.body.password,
        process.env.SECRETPHRASE
      ).toString();
    }
    try {
      const user = await User.findByIdAndUpdate(
        req.params.id,
        { $set: req.body },
        { new: true }
      );
      const { password, __v, createdAt, ...others } = this.updateUser._doc;
      res.status(200).json({ ...others });
    } catch (error) {}
  },
};
