const pool = require("./db");
async function getProducts() {
  try {
    const query = "SELECT * FROM discografia";
    const rows = await pool.query(query);
    return rows;
  } catch (error) {
    throw error;
  }
}
async function getProduct(id_disco) {
  try {
    const query = "SELECT * FROM discografia WHERE id_disco=?";
    const rows = await pool.query(query, [id_disco]);
    return rows;
  } catch (error) {
    throw error;
  }
}
async function addItem(data) {
  try {
    const query = "INSERT INTO discografia SET ?";
    const rows = await pool.query(query, [data]);
    return rows;
  } catch (error) {
    throw error;
  }
}
async function deleteProduct(id_disco) {
  try {
    const query = "DELETE FROM discografia WHERE id_disco = ?";
    const rows = await pool.query(query, [id_disco]);
    return rows;
  } catch (error) {
    throw error;
  }  
}
async function modifyProduct(data, id_disco) {
  try {
    const query = "UPDATE discografia SET ? WHERE id_disco = ?";
    const rows = await pool.query(query, [data, id_disco]);
    return rows; 
  } catch (error) {
    throw error;
  }  
}
module.exports = {
  getProducts,
  addItem,
  getProduct,
  deleteProduct,
  modifyProduct,
};
