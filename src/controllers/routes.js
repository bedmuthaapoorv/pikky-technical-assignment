// function: to populate routes with api endpoints / map path to corresponding business logic

"use strict";

let services = require("../services/Services");
exports.routes = (app) => {
  app.route("/").get((req, res) => {
    res.send("App is working");
  });
  
  app.route("/getLocations").post(async (req, res) => res.send(await services.getLocations(req, res)));

  app.route("/foodSearch").post(async (req, res) => {
    let locationID=req.body["locationID"];
    res.send(await services.FoodItems(locationID))
  });
};
