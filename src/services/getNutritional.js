const connectors=require('../config/connectors')
let conn=connectors.foodDBconn
async function getNutritional(id){
    return new Promise((resolve, reject) => {
    setTimeout(async ()=>{
        console.log('getting list of food NutritionalValue in 300ms')
        let response='ok'
        const query='select * from NutritionalValue where FoodID='+id;
        try{
            response=await conn.query(query);
            resolve(response.rows[0])      
            
        }catch(err){
            reject(err["detail"]);
        };
    }, 300) })
}
exports.getNutritional=getNutritional;