const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let exercises = [];
  db.serialize(function () {
    db.each(
      "select * from exercise",
      (err, row) => {
        exercises.push(row);
      },
      () => {
        // All done fetching records, render response
        res.render("all_exercises", { exercises: exercises });
      }
    );
  });
});

router.get("/:exercise_name", async (req, res) => {
  let exercise_info;
  db.get(
    "select * from exercise where exercise_name = ?",
    req.params.exercise_name,
    (err, row) =>{
      exercise_info = row;
      res.render("exercise", {exercise: exercise_info})
    }
  );
});

module.exports = router;
