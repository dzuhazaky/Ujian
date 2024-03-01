import express from "express"
import { createRent, deleteRent, readRent, updateRent } from "../controller/rentController"
const app = express()

/** allow read to a json from body */
app.use(express.json())

/** address for get Rent data */
app.get(`/Rent`, readRent)
/** address for add new Rent */
app.post(`/Rent`, createRent)
/** address for update Rent */
app.put(`/Rent/:userID`, updateRent)
/** address for delete Rent */
app.delete(`/Rent/:userID`, deleteRent)


export default app