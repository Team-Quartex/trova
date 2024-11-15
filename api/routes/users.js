import express from 'express'
import { login,register,logOut } from '../controllers/auth.js';

const router = express.Router();

router.post('/register',register);
router.post('/login',login);
router.get('/logout',logOut);



export default router