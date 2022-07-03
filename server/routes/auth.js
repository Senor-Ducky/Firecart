const express = require('express');
const User = require("../models/user");
const bcryptjs = require('bcryptjs');

const authRouter = express.Router();


authRouter.post('/api/signup', async (req,res) => {
   try {
    const {name,email,password} = req.body;
    const existingUser = await User.findOne({email})

    if(existingUser) {
        return res.status(400).json({'msg': 'User already exists!'})
    }

    const hashedPassword = await bcryptjs.hash(password, 8)

    let user = new User({
        email,
        name,
        password: hashedPassword,
    })

    user = await user.save();

    return res.json(user)
   } catch(e) {
        res.status(500).json({"error": e.message})
   }

});

module.exports = authRouter;