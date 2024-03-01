import express, { Request, Response } from "express"
import routeAdmin from "./route/adminRoute"

const app = express()

const PORT = 8000

app.use(routeAdmin)
app.use(express.json())

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})