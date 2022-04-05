const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let routines = [];
  db.serialize(function () {
    db.each("select * from routines", function (err, row) {
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
