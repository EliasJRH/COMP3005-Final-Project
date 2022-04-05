const sqlite3 = require("sqlite3").verbose();

const db = new sqlite3.Database(
  "./workout_database.db",
  sqlite3.OPEN_READWRITE,
  (err) => {
    if (err) console.log(err);
    console.log("Connected to database");
  }
);

module.exports = db;