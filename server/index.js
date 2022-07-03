// package imports
const express = require('express');
const mongoose = require('mongoose');
require('dotenv').config()

// file imports
const authRouter = require('./routes/auth');

//initialization
const app = express();
const DB = `mongodb+srv://rahul:${process.env.PASSWORD}@cluster0.gu2ah0i.mongodb.net/?retryWrites=true&w=majority`

// middleware
app.use(express.json());
app.use(authRouter);


// connections
mongoose.connect(DB).then(() => {
    console.log('MongoDB Connection Successful !')
})

const PORT = 3000;

app.listen(PORT,'0.0.0.0', () => {
    console.log(`Connected at Port:${PORT}`)
})