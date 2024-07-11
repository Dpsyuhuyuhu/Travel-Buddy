const express = require('express');
const bodyParser = require('body-parser');
const admin = require('firebase-admin');
const serviceAccount = require('./path/to/serviceAccountKey.json'); // Ubah path sesuai dengan lokasi file serviceAccountKey.json Anda

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

const app = express();
app.use(bodyParser.json());

app.post('/register', async (req, res) => {
  const { email, password } = req.body;
  try {
    const userRecord = await admin.auth().createUser({
      email,
      password,
    });
    res.status(201).send(userRecord);
  } catch (error) {
    res.status(400).send({ error: error.message });
  }
});

app.post('/login', async (req, res) => {
  const { email, password } = req.body;
  try {
    const user = await admin.auth().getUserByEmail(email);
    const token = await admin.auth().createCustomToken(user.uid);
    res.status(200).send({ token });
  } catch (error) {
    res.status(400).send({ error: error.message });
  }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
