const express = require("express");
const swaggerUi = require("swagger-ui-express");
const swaggerSpec = require("./swagger");
const incapacidadRoutes = require('./routes/incapacidad.routes');
const personalRoutes = require('./routes/personal.routes');
const medicoRoutes = require('./routes/medico.routes');

const app = express();

app.use(express.json());

// Swagger
app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerSpec));

// rutas
const pacientesRoutes = require("./routes/pacientes.routes");
app.use("/api/pacientes", pacientesRoutes);
app.use('/api/incapacidades', incapacidadRoutes);
app.use('/api/personal', personalRoutes);
app.use('/api/medicos', medicoRoutes);


console.log("RUTA INCAPACIDADES CARGADA");

app.listen(3000, () => {
  console.log("Servidor corriendo en http://localhost:3000");
  console.log("Swagger en http://localhost:3000/api-docs");
});

const connectMongo = require('./db/mongodb');

connectMongo();