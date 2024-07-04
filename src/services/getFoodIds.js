const connectors=require('../config/connectors')
let conn=connectors.foodDBconn
async function getFoodIds(locationID){
    console.log('getting list of food Ids')
    let response='ok'
    const query='select FoodID from Food_Location_Mapping where LocationID='+locationID;
    try{
        response=await conn.query(query);
        return response.rows      
        
    }catch(err){
        return (err["detail"]);
    };
    
}
exports.getFoodIds=getFoodIds;