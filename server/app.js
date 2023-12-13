const express = require('express');
const RidesRoutes = require('./routes/rides');

const cors = require('cors');


const app = express();
const port = 3000;
app.use(cors());

app.use(express.urlencoded({
	extended: true
}))

app.use(express.json());

app.use('/rides', RidesRoutes);

app.listen(port, '0.0.0.0', () => {
    console.log("Connected!");
    }
);
