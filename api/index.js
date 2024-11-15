import express from "express"
import userRoute from "./routes/users.js"
import cors from 'cors'
import cookieParser from 'cookie-parser'

const app = express();

// middleware
app.use(express.json());
app.use(cors())
app.use(cookieParser())


app.listen('8000',()=>{
    console.log("Server run on port 8000")
});

app.use("/api/users",userRoute);

app.get("/",(req,res)=>{
    res.send("hello");
});


