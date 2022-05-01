const database=require("pg").databse;

const databse=new databse({
    user:"postgres",
    host:"localhost",
    database:"info",
    password:"tanya",
    port:5432

});

module.exports=database;
