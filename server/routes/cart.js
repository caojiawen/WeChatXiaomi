const express = require('express');
const router = express.Router();
var myQuery = require('./query');

router.get('/', (req, res) => {
    var sql = "SELECT * FROM mi_cart"
    myQuery(sql).then(result=>{
        res.send(result)
    })
})

router.post('/addCart',(req,res)=>{
    var mid = req.body.mid;
    var mName = req.body.mName;
    var mPrice = req.body.mPrice;
    var mPic = req.body.mPic;
    var mSize = req.body.mSize;
    var mColor = req.body.mColor;
    var count = req.body.count;
    var selected = 1;
    var sql = `INSERT INTO mi_cart (id, mid, mName, mPrice, mPic, mSize, mColor, count, selected) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?)`
    myQuery(sql,[mid,mName,mPrice,mPic,mSize,mColor,count,selected]).then(result=>{
        res.send({code:1,msg:'ok',data:result})
    })
})
router.post('/removeCart',(req,res)=>{
    var id = req.body.id;
    var sql = `DELETE FROM mi_cart WHERE id=?`;
    myQuery(sql,[id]).then(result=>{
        res.send({code:1,msg:'ok',data:result})
        
    })
})

module.exports = router;