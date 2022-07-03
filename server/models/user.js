const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    name: {
        required: true,
        type: String,
        trim: true
    },

    email: {
        required: true,
        type: String,
        trim: true,
        validate: {
            validator: (value) => {
                const re = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
                value.match(re);
            },
            message: "Please enter valid email address",
        }
    },

    password: {
        required: true,
        type: String,
    },

    address: {
        type: String,
        default: '',
    },

    type: {
        type: String,
        default: 'user',
    }
})

const User = mongoose.model('User', userSchema)
module.exports = User;