const connectors=require('../config/connectors')
let conn=connectors.foodDBconn
async function getLocations(){
    console.log('getting list of food locations')
    let response='ok'
    const query='select * from Location';
    try{
        response=await conn.query(query);
        return response.rows      
        
    }catch(err){
        return (err["detail"]);
    };
    
}
exports.getLocations=getLocations;