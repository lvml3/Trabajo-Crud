const mysql = require("mysql");
const util = require("util");
const pool = mysql.createPool({
  host: process.env.MYSQL_HOST,
  database: process.env.MYSQL_DB_NAME,
  user: process.env.MYSQL_USER,
  pass: process.env.MYSQL_PASS,
});

pool.query = util.promisify(pool.query);
module.exports = pool;
