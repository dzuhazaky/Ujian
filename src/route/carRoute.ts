import express from "express"
import { createcar, deletecar, readcar, updatecar } from "../controller/carController"
const app = express()

/** allow read to a json from body */
app.use(express.json())

/** address for get car data */
app.get(`/car`, readcar)
/** address for add new car */
app.post(`/car`, createcar)
/** address for update car */
app.put(`/car/:userID`, updatecar)
/** address for delete car */
app.delete(`/car/:userID`, deletecar)


export default app