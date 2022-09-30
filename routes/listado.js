const express = require("express");
const router = express.Router();
const productsModel = require("../models/productsModel");

router.get("/", async (req, res) => {
  const discografia = await productsModel.getProducts();
  res.render("listado", { user: req.session.user, discografia });
});
router.get("/addItem", (req, res) => {
  res.render("addItem");
});

router.post("/addItem", async (req, res) => {
  const {
    id_disco,
    año,
    nombre,
    portada,
    contenido,
} = req.body;
  const data = {
    id_disco,
    año,
    nombre,
    portada,
    contenido,
  };
  await productsModel.addItem(data);
  res.redirect("/listado");
});

router.get("/handleEdit/:id_disco", async (req, res) => {
  const row = await productsModel.getProduct(req.params.id_disco);
  const product = {
    id_disco: row[0].id_disco,
    año: row[0].año,
    nombre: row[0].nombre,
    portada: row[0].portada,
    contenido: row[0].contenido,
  };
  res.render("editItem", { product });
});

router.get("/deleteProduct/:id_disco", async (req, res) => {
  await productsModel.deleteProduct(req.params.id_disco);
  res.redirect("/listado");
});

router.post("/editProduct", async (req, res) => {
  const data = {
    id_disco: req.body.id_disco,
    año: req.body.Año,
    nombre: req.body.Nombre,
    portada: req.body.Portada,
    contenido: req.body.Contenido
  };
  await productsModel.modifyProduct(data, data.id_disco);
  res.redirect("/listado");
});

module.exports = router;