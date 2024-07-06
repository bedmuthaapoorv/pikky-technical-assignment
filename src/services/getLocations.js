const connectors = require("../config/connectors");
let conn = connectors.foodDBconn;
async function getLocations() {
  console.log("getting list of food locations in 2 minutes");
  return new Promise((resolve, reject) => {
    setTimeout(async () => {
      let response = "ok";
      const query = "select * from Location";
      try {
        response = await conn.query(query);
        resolve(response.rows);
      } catch (err) {
        reject(err["detail"]);
      }
    }, 1000);
  });
}
exports.getLocations = getLocations;
