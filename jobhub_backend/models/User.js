const mongoose = require("mongoose");
const UserSchema = new mongoose.Schema(
  {
    username: { type: String, required: true, unique: true },
    email: { type: String, required: true, unique: true },
    password: { type: String, required: true, unique: true },
    location: { type: String, required: false },
    isAdmin: { type: Boolean, default: false },
    isAgent: { type: Boolean, default: false },
    skills: { type: Array, default: false },
    profile: {
      type: String,
      required: true,
      default:
        "https://pbs.twimg.com/media/F8Wj6njXkAAt_Ec?format=jpg&name=large",
    },
  },
  { timestamps: true }
);
module.exports = mongoose.model("User", UserSchema);
