const { getNutritional } = require('./getNutritional');

let getLocations=require('./getLocations').getLocations
let FoodItems=require('./FoodItems').FoodItems;
let getFoodIds=require('./getFoodIds').getFoodIds;
let getFoodItems=require('./getFoodItems').getFoodItems;
exports.getLocations=getLocations
exports.FoodItems=FoodItems
exports.getFoodIds=getFoodIds
exports.getFoodItems=getFoodItems
exports.getNutritional=getNutritional