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
      function (err, row) {
        routines.push(row);
      },
      function () {
        // All done fetching records, render response
        res.render("all_routines", { routines: routines });
      }
    );
  });
});

module.exports = router;
