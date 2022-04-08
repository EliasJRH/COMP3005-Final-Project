const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let name = req.query.name ? req.query.name : "";
  let type = req.query.type ? req.query.type : "";
  let equipment = req.query.equipment ? req.query.equipment : "";

  db.serialize(function () {
    db.all(
      "select * from routine where routine_name like $name and routine_type like $type and equipment_needed like $equipment",
      {
        $name: "%" + name + "%",
        $type: "%" + type + "%",
        $equipment: "%" + equipment + "%",
      },
      (err, rows) => {
        res.render("list_views/all_routines", { routines: rows });
      }
    );
  });
});

router.get("/:id", async (req, res) => {
  let routine_info = {};
  //maybe add rep and time count
  db.serialize(function () {
    db.get(
      "select * from routine where routine_id = ?",
      req.params.id,
      (err, row) => {
        routine_info = row;
      }
    );
    db.all(
      "select * from routine_exercise_list natural join exercise where routine_id = ? order by position_no asc",
      req.params.id,
      (err, rows) => {
        res.render("singles/routine", { routine: routine_info, exercises: rows });
      }
    );
  });
});

module.exports = router;
