const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let name = req.query.name ? req.query.name : "";
  let equipment = req.query.equipment ? req.query.equipment : "";
  let targeted_muscle_groups = req.query.targeted_muscle_groups
    ? req.query.targeted_muscle_groups
    : "";

  console.log(req.query);

  db.serialize(function () {
    db.all(
      "select * from exercise where exercise_name like $name and exercise_equipment like $equipment and targeted_muscle_groups like $tmg",
      {
        $name: "%" + name + "%",
        $equipment: "%" + equipment + "%",
        $tmg: "%" + targeted_muscle_groups + "%",
      },
      (err, rows) => {
        // All done fetching records, render response
        res.render("list_views/all_exercises", { exercises: rows });
      }
    );
  });
});

router.get("/:exercise_name", async (req, res) => {
  let exercise_info;
  db.get(
    "select * from exercise where exercise_name = ?",
    req.params.exercise_name,
    (err, row) => {
      exercise_info = row;
      res.render("singles/exercise", { exercise: exercise_info });
    }
  );
});

module.exports = router;
