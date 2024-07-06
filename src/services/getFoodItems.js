const connectors=require('../config/connectors')
const services=require('./Services')
let conn=connectors.foodDBconn
async function getFoodItems(idArray){
    console.log('getting list of foods')
    
    let response=[]
    let stockOut=[]
    for(let id of idArray){
        const query='select * from Food where FoodID='+id.foodid;
        try{
            let ans=await conn.query(query)
            ans=ans.rows[0]
            let nutritional=await services.getNutritional(id.foodid)
            ans={
                ...ans,
                ...nutritional
            }
            response.push(ans);  
            
        }catch(err){
            return (err["detail"]);
        };
    }
    return response
}
exports.getFoodItems=getFoodItems;