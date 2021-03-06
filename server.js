const express = require("express");
const path = require("path");
var app = express();

app.get("/ping", (req, res) => {
  res.send("Pong!").status(200);
});

app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));

app.get("/", function (req, res, next) {
  res.render("home");
});

app.use("/user", require("./routes/user.route"));
app.use("/routine", require("./routes/routine.route"));
app.use("/exercise", require("./routes/exercise.route"));

const PORT = process.env.PORT || 1337;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
  console.log(`http://localhost:${PORT}/`)
});

module.exports = app;
