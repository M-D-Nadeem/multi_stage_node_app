const express=require("express");
const app=express();
app.get("/",(req,res)=>{
    res.send("Hello World!!")
})
app.listen("3002",'0.0.0.0',()=>{
    console.log("Your server is running on http://localhost:3002/");
    
})