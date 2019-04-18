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
  const data = {
    title: "Looking for a wordpress Developer",
    technologies: "php CSS HTML",
    budget: "$3000",
    description:
      "Node.js is an open-source, cross-platform JavaScript run-time environment that executes JavaScript code outside of a browser.",
    contact_email: "node@js.com"
  };
  let { title, technologies, budget, description, contact_email } = data;
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
});

module.exports = router;
