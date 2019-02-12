const express = require('express');
const pool = require('../pool');
const router = express.Router();


router.get('/classLeft',(req,res)=>{
    var sql = "SELECT * FROM mi_classify_left";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});


module.exports = router;