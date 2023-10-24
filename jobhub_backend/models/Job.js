const mongoose = require("mongoose");
const JobSchema = new mongoose.Schema(
  {
    title: { type: String, required: true },
    location: { type: String, required: true },
    conpany: { type: String, required: true },
    description: { type: String, required: true },
    salary: { type: String, required: true },
    period: { type: String, required: true },
    contract: { type: String, required: true },
    requirements: { type: Array, required: true },
    imgUrl: { type: String, required: true },
    agentId: {
      type: mongoos.Schema.Types.ObjectId,
      ref: "User",
      required: true,
    },
  },
  { timestamps: true }
);
module.exports = mongoose.model("Job", JobSchema);
