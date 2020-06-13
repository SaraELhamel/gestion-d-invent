const express = require('express');
const app = express();
// const router = express.Router();
// var addRouter = require('/routes/add');
// app.use('/add',addRouter);
  const path = require('path');
  app.use(express.static(path.join(__dirname,"style")));
  var bodyParser = require('body-parser');
  
 app.set('view engine', 'ejs');
  app.get('/', function(req, res) {
    res.render('add');
});
app.post('/',function(req,res)
{
  console.log(req.body.data);
});

var mysql      = require('mysql');
  var connection = mysql.createConnection({
    host     : 'localhost',
     user     : 'root',
    password : '',
    database: 'mia BD'
 });
   var urlencodedParser = bodyParser.urlencoded({
    extended: false
   })
   connection.connect(function (error) {
     //condition connect
      if (!!error) {
         console.log('Failed to connect :(');
      } else {
          console.log('Connected :D');
     }
 });
 
 
 
 connection.query('SELECT * FROM produit', (err,result,fields) => {
   if(err) throw err;
  console.log('Data received from mia produit:');
  console.log(result);
 });
  const rayon = { id: '81', produit: 'pantouffles',fournisseur:'Ro',numrayon:'03' };
  connection.query('INSERT INTO rayon SET ?', rayon, (err, res) => {
    if(err) throw err;
   console.log('Last insert ID:', res.insertId);
  });
  const produit = { id: '99', produit: 'serviette',fournisseur:'irla',numeroderayon:'10' };
   connection.query('INSERT INTO produit SET ?', produit, (err, res) => {
    if(err) throw err;
    console.log('Last insert ID:', res.insertId);
   });
  connection.query(
   'UPDATE rayon SET produit = ? Where ID = ?',
   ['jupe', 31],
   (err, result) => {
    if (err) throw err;
     console.log(`Changed ${result.changedRows} row(s)`);
   }
 );
connection.query(
  'DELETE FROM produit WHERE id = ?', [8], (err, result) => {
    if (err) throw err;
    console.log(`Deleted ${result.affectedRows} row(s)`);
  }
);

app.listen(process.env.port || 3000,function(){
    console.log('now listening for request');
});