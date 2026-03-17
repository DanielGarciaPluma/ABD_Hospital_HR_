const express = require("express");
const swaggerUi = require("swagger-ui-express");
const swaggerSpec = require("./swagger");

const app = express();

app.use(express.json());

// Swagger
app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerSpec));

// rutas
const pacientesRoutes = require("./routes/pacientes.routes");
app.use("/api/pacientes", pacientesRoutes);

app.listen(3000, () => {
  console.log("Servidor corriendo en http://localhost:3000");
  console.log("Swagger en http://localhost:3000/api-docs");
});