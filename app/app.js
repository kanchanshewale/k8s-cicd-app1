const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello from Kubernetes CI/CD Project 🚀');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
