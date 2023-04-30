const express = require('express');

const app=express();


app.get('/', (req, res) => {
    res.send("{'message':'hello i'm arjun'}");
});

app.get('/secret', (req, res) => {
    res.send("{'hulk':'Leh Banner I'm always angry'}")
});

app.get('/ready', (req, res)=>{
    res.send("{'captain america':'I can do this all day'}")
})

app.listen(4000,()=>{console.log('listening on port 4000')});

module.exports = app;