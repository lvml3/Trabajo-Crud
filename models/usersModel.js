const pool = require("./db");
const md5 = require("md5");
async function getUserByUserAndPass(user, pass) {
  try {
    const query = "SELECT * FROM users where user_name = ? and user_pass = ?";
    const row = await pool.query(query, [user, md5(pass)]);
    return row[0];
  } catch (error) {
    console.log(error);
  }
}
module.exports = { getUserByUserAndPass };
