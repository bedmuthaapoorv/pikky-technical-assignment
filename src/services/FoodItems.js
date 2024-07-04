const connectors=require('../config/connectors')
let conn=connectors.foodDBconn
let services=require('./Services')
async function FoodItems(locationID){
    console.log('getting list of food items')
    let response='ok'
    try{
        // find match food ids
        response=await services.getFoodIds(locationID);
        // get food items
        response=await services.getFoodItems(response)
        
        return response      
        
    }catch(err){
        return (err["detail"]);
    };
    
}
exports.FoodItems=FoodItems;