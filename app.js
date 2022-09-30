const createError = require("http-errors");
const express = require("express");
const path = require("path");
const cookieParser = require("cookie-parser");
const logger = require("morgan");
const session = require("express-session");

require("dotenv").config();

const loginRouter = require("./routes/login");
const listadoRouter = require("./routes/listado");

const app = express();

app.set("views", path.join(__dirname, "views"));
app.set("view engine", "hbs");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use(
  session({
    secret: "esteesmisecreto@#",
    resave: false,
    saveUninitialized: true,
  })
);

secured = (req, res, next) => {
  if (req.session.user) {
    next();
  } else {
    res.redirect("/");
  }
};

app.use("/", loginRouter);
app.use("/listado", secured, listadoRouter);

app.use("*", (req, res, next) => {
  res.send("Error 404 Page Not Found 😫");
});

module.exports = app;