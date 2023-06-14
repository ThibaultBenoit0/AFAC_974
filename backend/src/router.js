const express = require("express");

const router = express.Router();

const oeuvreControllers = require("./controllers/oeuvreControllers");
const utilisateurControllers = require("./controllers/utilisateurControllers");

router.get("/oeuvres", oeuvreControllers.browse);
router.get("/oeuvres/:id", oeuvreControllers.read);
router.put("/oeuvres/:id", oeuvreControllers.edit);
router.post("/oeuvres", oeuvreControllers.add);
router.delete("/oeuvres/:id", oeuvreControllers.destroy);

router.get("/utilisateurs", utilisateurControllers.browse);
router.get("/utilisateurs/:id", utilisateurControllers.read);
router.put("/utilisateurs/:id", utilisateurControllers.edit);
router.post("/utilisateurs", utilisateurControllers.add);
router.delete("/utilisateurs/:id", utilisateurControllers.destroy);

module.exports = router;
