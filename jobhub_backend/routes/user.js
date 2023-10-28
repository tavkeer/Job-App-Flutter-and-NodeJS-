const router = require("express").Router();
const userController = require("../controllers/userController");
const {
  verifyAndAuthorization,
  verifyToken,
} = require("../middleware/verifyToken");

// update User

router.put("/:id", verifyAndAuthorization, userController.updateUser);

module.exports = router;
