import express from "express"
import userRoute from "./routes/users.js"
import posts from "./routes/posts.js"
import comment from "./routes/comments.js"
import likes from "./routes/likes.js"
import savedpost from './routes/savedposts.js'
import seller from './routes/sellers.js'
import products from './routes/products.js'
import cors from 'cors'
import cookieParser from 'cookie-parser'
import multer from 'multer'
import path from 'path'
import { fileURLToPath } from 'url';

// Get the directory name
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();

// middleware
app.use(express.json());
app.use(cors())
app.use(cookieParser())


app.listen('8000',()=>{
    console.log("Server run on port 8000")
});

app.use("/api/users",userRoute);
app.use("/api/posts",posts);
app.use("/api/comments",comment);
app.use("/api/likes",likes);
app.use("/api/savedpost",savedpost);
app.use("/api/seller",seller);
app.use("/api/products",products)





// upload image
let imageIndex = 1; // Initialize the index counter

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, path.join(__dirname, 'uploads/')); // Save files in 'uploads' directory
  },
  filename: (req, file, cb) => {
    const uniqueName = `${imageIndex}-${Date.now()}-${file.originalname}`;
    imageIndex++; // Increment the index for the next file
    cb(null, uniqueName); // Use the index, timestamp, and original filename
  },
});
  
  const upload = multer({ storage });
  
  // API endpoint for multiple file uploads
  app.post('/api/upload', upload.array('photos', 5), (req, res) => {
    if (!req.files || req.files.length === 0) {
      return res.status(400).json({ error: 'No files uploaded' });
    }
    const fileInfos = req.files.map(file => ({
      filename: file.filename,
    }));
    res.json({
      files: fileInfos,
    });
  });
  
  // Serve uploaded files
  app.use('/uploads', express.static(path.join(__dirname, 'uploads')));




app.get("/",(req,res)=>{
    res.send("hello");
});


