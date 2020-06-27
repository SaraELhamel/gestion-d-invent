const express = require('express');
const app = express();
  const path = require('path');
  app.use(express.static(path.join(__dirname,"style")));
  var bodyParser = require('body-parser');
  
 app.set('view engine', 'ejs');
  app.get('/', function(req, res) {
    res.render('home');
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
//  app.post('/', urlencodedParser, function(req, res) {
//   const produit = {}
  
//   produit.id = req.body.id 
// produit.fournisseur = req.body.fournisseur 
//   produit.produit = req.body.produit
//   produit.numrayon = req.body.numrayon
 

//   connection.query('INSERT INTO produit SET ?', produit, (err, res) => {
//      if(err) throw err;


//   });
//   res.render('add');

// });

app.post('/update', urlencodedParser, (req, res) => {

  let reqbody1 = [req.body.produit, req.body.fournisseur, req.body.numrayon, req.body.id]
  let sql = 'UPDATE `produit` SET `produit`=?,`fournisseur`=?,`numrayon`=? where `id`=?'

  connection.query(sql, reqbody1 ,  (error)  =>  {
     if (error) {
         console.log("NO CHANGE DATA")
     } else {
         console.log("Data have been changed")
     }

   });
   res.redirect('/')
});




// app.post('/', urlencodedParser, function(req, res) {
//   const produit = {}
  
//   produit.id = req.body.id 
// produit.fournisseur = req.body.fournisseur 
//   produit.produit = req.body.produit
//   produit.numrayon = req.body.numrayon
 



//   res.render('add');

// });
 
 
//  connection.query('SELECT * FROM produit', (err,result,fields) => {
//    if(err) throw err;
//   console.log('Data received from mia produit:');
//   console.log(result);
//  });
//   const rayon = { id: '81', produit: 'pantouffles',fournisseur:'Ro',numrayon:'03' };
//   connection.query('INSERT INTO rayon SET ?', rayon, (err, res) => {
//     if(err) throw err;
//    console.log('Last insert ID:', res.insertId);
//   });
//   const produit = { id: '99', produit: 'serviette',fournisseur:'irla',numrayon:'10' };
//    connection.query('INSERT INTO produit SET ?', produit, (err, res) => {
//     if(err) throw err;
//     console.log('Last insert ID:', res.insertId);
//    });
//   connection.query(
//    'UPDATE rayon SET produit = ? Where ID = ?',
//    ['jupe', 31],
//    (err, result) => {
//     if (err) throw err;
//      console.log(`Changed ${result.changedRows} row(s)`);
//    }
//  );
app.get("/produit", (req, res) => {
  connection.query('SELECT * FROM produit', (err, rows) => {
      if (err) {
          console.log("Error getting data")
      } else {
          res.render('home')
      }
  })
});
 connection.query(
   'DELETE FROM produit WHERE id = ?', [3], (err, result) => {
     if (err) throw err;
     console.log(`Deleted ${result.affectedRows} row(s)`);
   });
 

app.listen(process.env.port || 3000,function(){
    console.log('now listening for request');
});