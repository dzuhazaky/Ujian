import express from "express"
import { createAdmin, deleteAdmin, loginAdmin, readAdmin, updateAdmin } from "../controller/adminController"
import { verifyAdmin } from "../middleware/verifyAdmin"
const app = express()

/** allow read to a json from body */
app.use(express.json())

/** address for get Admin data */
app.get(`/Admin`,verifyAdmin, readAdmin)
/** address for add new Admin */
app.post(`/Admin`,verifyAdmin, createAdmin)
/** address for update Admin */
app.put(`/Admin/:AdminID`,verifyAdmin, updateAdmin)
/** address for delete Admin */
app.delete(`/Admin/:AdminID`,verifyAdmin, deleteAdmin)
/** address for Login Admin */
app.post(`/Admin/login`, loginAdmin)



export default app