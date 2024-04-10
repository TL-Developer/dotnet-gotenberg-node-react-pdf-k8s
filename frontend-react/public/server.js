const express = require('express');
const path = require('path')

const app = express();

const frontend = path.join(__dirname, '../', 'build');

console.log(frontend);

app.use(express.static(frontend))

app.listen(4200, () => console.log('Frontend running on port 4200'));