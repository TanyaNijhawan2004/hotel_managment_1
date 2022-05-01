const express=require("express");
const app=express();

const database=require("./dtabase");

app.use(express.json())

//create a new user 
app.post("/users",(req,res)=>{
    const user=req.body;
    database.createUser(user)
    .then(user=>{
        res.status(201).json(user)
    })
    .catch(err=>{
        res.status(500).json({error:err.message})
    })
});

app.listen(3000,()=>{
    console.log("Server is running on port 3000");
})