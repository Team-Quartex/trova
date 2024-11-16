import express from 'express'
import { checkReservation } from '../controllers/reservation.js'

const router = express.Router()

router.get("/check",checkReservation)
router.get("/addreservation",)


export default router