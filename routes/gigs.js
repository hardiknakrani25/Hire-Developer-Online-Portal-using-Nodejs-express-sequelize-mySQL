const express = require("express");
const router = express.Router();
const db = require("../config/databse");
const Gig = require("../models/Gig");

//Get gig list
router.get("/", (req, res) => {
  Gig.findAll()
    .then(gigs => {
      console.log(gigs);
      res.sendStatus(200);
    })
    .catch(err => console.log(err));
});

//Add a gig

router.get("/add", (req, res) => {
  const data = {
    title: "Looking for a Node Developer",
    technologies: "JS CSS HTML",
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
