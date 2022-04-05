const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let users = [];
  db.serialize(function () {
    db.each("select * from user", function (err, row) {
        users.push(row);
    },
      function () {
        // All done fetching records, render response
        res.render("all_users", { users: users });
      }
    );
  });
});

router.get("/:username", async (req, res) => {
  res.render("user", {name: req.params.username})
});

module.exports = router;
