const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const bodyParser = require("body-parser");

const app = express();

app.use(express.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

const db = mysql.createConnection({
  user: "root",
  host: "localhost",
  password: "",
  database: "loginSystem",
});

app.post("/register", (req, res) => {
  const username = req.body.username;
  const email = req.body.email;
  const password = req.body.password;
  const number = req.body.number;

  db.query(
    "INSERT INTO users(username,email,password,number) VALUES(?,?,?,?)",
    [username, email, password, number],
    (err, result) => {
      console.log(err);
      if (!err) {
        if (result.affectedRows > 0) {
          res.send("Successfull registered");
        }
      }
      if (err) {
        res.send(err);
      }
    }
  );
});

// // ----------For date insertion---------------------
// app.post("/demo", (req, res) => {
//   // const demo = req.body.userdemo;
//   const fromdate = req.body.selectedDate;

//   db.query(
//     "INSERT INTO date(fromdate) VALUES(?)",
//     [fromdate],
//     (err, result) => {
//       if (err) {
//         console.log(res);
//       } else {
//         console.log("result is", result);
//         res.send({ messagee: "succesfully inserted" });
//       }
//     }
//   );
// });
// ----------To date insertion----------------------
app.get('/',(req,res)=>{
  res.send('Data Is Comming From Backend')
})
app.post("/login", (req, res) => {
  // const username = req.body.username;
  const email = req.body.email;
  const password = req.body.password;
  console.log(req.body);

  db.query(
    "SELECT * FROM users WHERE email= ? AND password = ? ",
    [email, password],
    (err, result) => {
      if (err) {
        res.send({ err: err });
      }
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send({ message: "wrong username/password combination" });
      }
    }
  );
});

app.listen(3001, () => {
  console.log("running server");
});
