const swaggerJsdoc = require("swagger-jsdoc");

const options = {
  definition: {
    openapi: "3.0.0",
    info: {
      title: "API Hospital",
      version: "1.0.0",
      description: "API para gestión de pacientes del hospital"
    },
    servers: [
      {
        url: "http://localhost:3000",
        description: "Servidor local"
      }
    ]
  },
  apis: ["./routes/*.js"] // Swagger leerá los comentarios de las rutas
};

const swaggerSpec = swaggerJsdoc(options);

module.exports = swaggerSpec;