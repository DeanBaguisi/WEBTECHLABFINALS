/*
 Author: Culanag
*/
const express = require('express');
const mysql = require('mysql');

const app = express();

app.listen(8001, 'localhost');


//Create db connection
const db = mysql.createConnection({
    host    : 'localhost',
    user    : 'root',
    password: '',
    database: 'transient'
});

//Connect to db
db.connect((err) => {
    if(err) {
        throw err;
    }
    console.log('MySql connected...');
});

//Insert a service
app.get('/addservice', (request, response) => {
    //insert code here
});

//Show reservations
app.get('/showreservations', (request, response) => {
    let sql = `SELECT * FROM reservation`;
    let query = db.query(sql, (err, results) => {
        if(err) throw err;
        console.log(results);
        response.send('Reservations fetched...');
    });
});

//Show particular reservation
app.get('/showreservations/:reservation_status', (request, response) => {
    let sql = `SELECT * FROM reservation WHERE reservation_status = ${request.params.reservation_status}`;
    let query = db.query(sql, (err,result) => {
        if(err) throw err;
        console.log(result);
        response.send('Reservation fetched...');
    });   
});

//Show reservations by ID
app.get('/showreservations/:reservation_id', (request, response) => {
    let sql = `SELECT * FROM reservation WHERE reservation_id = ${request.params.reservation_id}`;
    let query = db.query(sql, (err,result) => {
        if(err) throw err;
        console.log(result);
        response.send('Reservation fetched...');
    });    
});

