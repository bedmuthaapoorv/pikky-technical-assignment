const connectors=require('../config/connectors')
let conn=connectors.foodDBconn
async function getNutritional(id){
    console.log('getting list of food NutritionalValue')
    let response='ok'
    const query='select * from NutritionalValue where FoodID='+id;
    try{
        response=await conn.query(query);
        return response.rows[0]      
        
    }catch(err){
        return (err["detail"]);
    };
    
}
exports.getNutritional=getNutritional;