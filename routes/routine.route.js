const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let name = req.query.name ? req.query.name : "";
  let type = req.query.type ? req.query.type : "";
  let equipment = req.query.equipment ? req.query.equipment : "";

  let routines = [];
  db.serialize(function () {
    db.each(
      "select * from routine where routine_name like $name and routine_type like $type and equipment_needed like $equipment",
      {
        $name: "%" + name + "%",
        $type: "%" + type + "%",
        $equipment: "%" + equipment + "%",
      },
      (err, row) => {
        routines.push(row);
      },
      () => {
        res.render("all_routines", { routines: routines });
      }
    );
  });
});

router.get("/:id", async (req, res) => {
  let routine_info = {};
  let exercises = [];
  //maybe add rep and time count
  db.serialize(function () {
    db.get(
      "select * from routine where routine_id = ?",
      req.params.id,
      (err, row) => {
        routine_info = row;
      }
    );
    db.each(
      "select * from routine_exercise_list natural join exercise where routine_id = ? order by position_no asc",
      req.params.id,
      (err, row) => {
        exercises.push(row);
      },
      () => {
        res.render("routine", { routine: routine_info, exercises: exercises });
      }
    );
  });
});

module.exports = router;
