const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (_req, res) => res.send('Hello from CodePipeline → CodeBuild → CodeDeploy → EC2!'));
app.get('/health', (_req, res) => res.status(200).send('OK'));

app.listen(port, () => console.log(`App listening on ${port}`));
