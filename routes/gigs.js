const express = require("express");
const router = express.Router();
const db = require("../config/databse");
const Gig = require("../models/Gig");

//Get gig list
router.get("/", (req, res) => {
  Gig.findAll()
    .then(gigs => {
      res.render("gigs", {
        gigs
      });
    })
    .catch(err => console.log(err));
});

//Display add gig form

router.get("/add", (req, res) => res.render("add"));

//Add a gig

router.post("/add", (req, res) => {
  let { title, technologies, budget, description, contact_email } = req.body;
  let errors = [];

  if (!technologies) {
    errors.push({ text: "please add a technologies" });
  }

  if (!title) {
    errors.push({ text: "please add a title" });
  }

  if (!description) {
    errors.push({ text: "please add a description" });
  }

  if (!contact_email) {
    errors.push({ text: "please add a contact_email" });
  }

  if (errors.length > 0) {
    res.render("add", {
      errors,
      title,
      technologies,
      budget,
      description,
      contact_email
    });
  } else {
    //Insert into table

    Gig.create({
      title,
      technologies,
      description,
      budget,
      contact_email
    })
      .then(gig => res.redirect("/gigs"))
      .catch(err => console.log(err));
  }
});

module.exports = router;
