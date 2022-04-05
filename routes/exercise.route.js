const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let exercises = [];
  db.serialize(function () {
    db.each("select * from exercise", function (err, row) {
        exercises.push(row);
    },
      function () {
        // All done fetching records, render response
        res.render("all_exercises", { exercises: exercises });
      }
    );
  });
});

module.exports = router;
