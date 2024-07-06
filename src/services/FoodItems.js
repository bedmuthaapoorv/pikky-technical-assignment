const connectors = require("../config/connectors");
let conn = connectors.foodDBconn;
let services = require("./Services");
async function FoodItems(locationID) {
  console.log("getting list of food items in 115 ms");
  return new Promise((resolve, reject) => {
    setTimeout(async () => {
      let response = "ok";
      try {
        // find match food ids
        response = await services.getFoodIds(locationID);
        // get food items
        response = await services.getFoodItems(response);

        resolve(response);
      } catch (err) {
        reject(err["detail"]);
      }
    }, 115);
  });
}
exports.FoodItems = FoodItems;
