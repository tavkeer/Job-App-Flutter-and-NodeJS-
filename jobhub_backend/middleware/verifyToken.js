const User = require("../models/User");
const jwt = require("jsonwebtoken");

const verifyToken = (req, res, next) => {
  const authHeader = req.headers.token;

  if (authHeader) {
    const token = authHeader.split(" ")[1];
    jwt.verifyToken(token, process.env.JWT_SEC, async (err, user) => {
      if (err) {
        res.status(403).json("INVALID TOKEN");

        req.user = user;

        console.log(user);

        next();
      }
    });
  } else {
    res.status(401).json("Your are not Authenticated");
  }
};

const verifyAndAuthorization = (req, res, next) => {
  verifyToken(req, res, () => {
    if (req.user.id === req.parms.id) {
      next();
    } else {
      res.status(403).json("You are restricted to perform this operation");
    }
  });
};

module.exports = { verifyToken, verifyAndAuthorization };
