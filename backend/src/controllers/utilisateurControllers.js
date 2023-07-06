// const argon2 = require("@node-rs/argon2");
const models = require("../models");

const getUserByEmailWithPasswordAndPassToNext = (req, res, next) => {
  models.utilisateur
    .getUserByLogin(req.body)
    .then(([utilisateur]) => {
      if (utilisateur[0] != null) {
        req.utilisateur = utilisateur[0]; // eslint-disable-line prefer-destructuring
        return next();
      }
      return res.status(404).send("Not found");
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Error retrieving data from database");
    });
};

const postUser = (req, res) => {
  const utilisateur = req.body;

  models.utilisateur
    .insert(utilisateur)
    .then(([result]) => {
      res.location(`/utilisateurs/${result.insertId}`).sendStatus(201);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const browse = (req, res) => {
  models.utilisateur
    .findAll()
    .then(([rows]) => {
      res.send(rows);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const read = (req, res) => {
  models.utilisateur
    .find(req.params.id)
    .then(([rows]) => {
      if (rows[0] == null) {
        res.sendStatus(404);
      } else {
        res.send(rows[0]);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const edit = (req, res) => {
  const utilisateur = req.body;

  // TODO validations (length, format...)

  utilisateur.id = parseInt(req.params.id, 10);

  models.utilisateur
    .update(utilisateur)
    .then(([result]) => {
      if (result.affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.sendStatus(204);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};


const editPassword = (req, res) => {
  const utilisateur = req.body;

  // TODO validations (length, format...)

  utilisateur.id = parseInt(req.params.id, 10);

  models.utilisateur
    .updatePassword(utilisateur)
    .then(([result]) => {
      if (result.affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.sendStatus(204);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const add = (req, res) => {

const editAdmin = (req, res) => {

  const utilisateur = req.body;

  // TODO validations (length, format...)

  utilisateur.id = parseInt(req.params.id, 10);

  models.utilisateur
    .updateAdmin(utilisateur)
    .then(([result]) => {
      if (result.affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.sendStatus(204);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const add = (req, res) => {
  const utilisateur = req.body;


//   argon2.hash(req.body.password).then((hashedPassword) => {
//     utilisateur.hashedPassword = hashedPassword;

//     models.utilisateur
//       .insert(utilisateur)
//       .then(() => {
//         return res.status(201).send("Created");
//       })
//       .catch((err) => {
//         if (err.code === "ER_DUP_ENTRY") {
//           return res.status(400).send("Email déjà utilisé");
//         }
//         console.error(err);
//         return res.sendStatus(500);
//       });
//   });

// TODO validations (length, format...)
// };

const destroy = (req, res) => {
  models.utilisateur
    .delete(req.params.id)
    .then(([result]) => {
      if (result.affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.sendStatus(204);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

module.exports = {
  browse,
  read,
  edit,
  // add,
  destroy,
  getUserByEmailWithPasswordAndPassToNext,
  postUser,
  editPassword,
  editAdmin,

};
