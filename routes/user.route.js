const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let users = [];
  let count = 0;
  db.serialize(function () {
    db.each("select * from user", function (err, row) { users.push(row);});
    db.each("select count(*) from user", function (err, row) { count = row["count(*)"];},
      function () {
        // All done fetching records, render response
        res.render("all_users", { users: users, count: count });
      }
    );
  });
});

router.get("/:username", async (req, res) => {
  res.render("user", {name: req.params.username})
});

module.exports = router;
