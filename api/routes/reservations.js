import express from 'express'
import { checkReservation,addreservation } from '../controllers/reservation.js'

const router = express.Router()

router.get("/check",checkReservation)
router.post("/addreservation",addreservation)


export default router