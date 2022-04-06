const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  console.log(req.query)
  let routines = [];
  db.serialize(function () {
    db.each("select * from routine", function (err, row) {
        routines.push(row);
    },
      function () {
        // All done fetching records, render response
        res.render("all_routines", { routines: routines });
      }
    );
  });

  // console.log(req.query)
  // let routines = [];
  // db.serialize(function () {
  //   db.each("select * from routine where routine_name = '" + req.query.name + "'", function (err, row) {
  //       routines.push(row);
  //   },
  //     function () {
  //       // All done fetching records, render response
  //       res.render("all_routines", { routines: routines });
  //     }
  //   );
  // });
});

module.exports = router;
