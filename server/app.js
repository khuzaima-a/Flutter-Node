const express = require('express');
const RidesRoutes = require('./routes/rides');

const app = express();
const port = 3000;

app.use(express.json());

app.use('/rides', RidesRoutes);

app.listen(port, () => {
    console.log("Connected!");
    }
);
