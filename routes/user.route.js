const express = require("express");
const router = express.Router();
const db = require("../database");

router.get("/", async (req, res) => {
  let username = req.query.username ? req.query.username : "";
  db.serialize(function () {
    db.all(
      "select username, email, date_of_birth from user where username like $username",
      {
        $username: "%" + username + "%",
      },
      function (err, rows) {
        res.render("list_views/all_users", { users: rows });
      }
    );
  });
});

router.get("/:username", async (req, res) => {
  friends = [];
  made_routines = [];
  saved_routines = [];
  user_info = {};
  db.serialize(() => {
    db.all(
      "select friends_user_two from friends where friends_user_one = ?",
      req.params.username,
      (err, rows) => {
        friends = rows;
      }
    );

    db.all(
      "select routine_id, routine_name, routine_type from routine where made_by = ?",
      req.params.username,
      (err, rows) => {
        made_routines = rows;
      }
    );

    db.all(
      "select routine_id, routine_name, routine_type from saved join routine on saved_routine_id = routine_id where saved_username = ?",
      req.params.username,
      (err, rows) => {
        saved_routines = rows;
      }
    );

    db.get(
      "select username, email, date_of_birth from user where username = ?",
      req.params.username,
      (err, row) => {
        user_info = row;
        console.log(saved_routines);
        res.render("singles/user", {
          user: user_info,
          friends: friends,
          made_routines: made_routines,
          saved_routines: saved_routines,
        });
      }
    );
  });
});

module.exports = router;
