const Pool = require('pg').Pool
const foodDBconn=new Pool({
    user: 'postgres',
    host: 'db',
    password: 'root',
    database: 'foodDB',
    port: '5432'
})

const redis=require('redis')
const redisClient=redis.createClient({
  url: 'redis://redis:6379'
});

// exports.mongoClient=mongoClient;
exports.foodDBconn=foodDBconn;
exports.redisClient=redisClient;