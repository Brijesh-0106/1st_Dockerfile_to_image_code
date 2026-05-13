import express from 'express';
import mongoose from 'mongoose';
const app = express();

const connectMongo = async () => {
    try {
        await mongoose.connect('mongodb://mongodbNetworkContainer:27017/testNetwork')
        console.log('Connected to MongoDB');
    } catch (err) {
        console.error('Error connecting to MongoDB', err);
    }
}

connectMongo()

const userSchema = new mongoose.Schema({
    name: String,
    age: Number
})

const User = mongoose.model('User', userSchema)

app.get('/', (req, res) => {
    res.send('I am king of the world!');
});

app.get('/addUser', async (req, res) => {
    try {
        const newUser = await User.create({
            name: 'John Doe',
            age: 30
        })
        res.send('Added user');
    } catch (err) {
        console.error('Error adding user', err);
        res.status(500).send('Error adding user');
    }
});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});