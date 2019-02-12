const express = require('express');
const router = express.Router();
var myQuery = require('./query');

router.get('/', (req, res) => {
    var mid = req.query.mid;
    var details = {};
    var sql = 'SELECT * FROM mi_detail_img WHERE mid=? AND classIfy="banner"';
    myQuery(sql, [mid]).then(result => {
        details.banner = result;
        var sql = 'SELECT * FROM mi_detail_title WHERE mid=?';
        return myQuery(sql, [mid])
    }).then(result => {
        details.title = result;
        var sql = 'SELECT * FROM `mi_detail_img` WHERE mid=? AND classIfy="icon"'
        return myQuery(sql, [mid])
    }).then(result => {
        details.icon = result;
        var sql = 'SELECT * FROM `mi_detail_comment`WHERE mid=?'
        return myQuery(sql, [mid])
    }).then(result => {
        details.comment = result;
        var sql = 'SELECT * FROM `mi_detail_img` WHERE mid=? AND classIfy="param"';
        return myQuery(sql, [mid])
    }).then(result => {
        details.paramImg = result;
        var sql = 'SELECT * FROM mi_detail_param WHERE mid=?'
        return myQuery(sql, [mid])
    }).then(result => {
        details.param = result;
        res.send(details)
    })
})

router.get('/select',(req,res)=>{
    var mid = req.query.mid;
    var selectGoods = {};
    var sql = `SELECT mid,prolongName,prolongPrice FROM mi_detail_param WHERE mid=? AND classIfy="prolong"`;
    myQuery(sql,[mid]).then(result=>{
        selectGoods.prolong = result;
        var sql = `SELECT mid,accidentName,accidentPrice FROM mi_detail_param WHERE mid=? AND classIfy="accident"`
        return myQuery(sql,[mid])
    }).then(result=>{
        selectGoods.accident = result;
        var sql = `SELECT mid,title FROM mi_detail_title WHERE mid=?`
        return myQuery(sql,[mid])
    }).then(result=>{
        selectGoods.title = result;
        var sql = `SELECT mid,pic FROM mi_detail_img WHERE mid=? AND classIfy="banner"`
        return myQuery(sql,[mid])
    }).then(result=>{
        selectGoods.pic = result[0];
        var sql = `SELECT mid,size,price FROM mi_detail_param WHERE mid=? AND classIfy='size'`
        return myQuery(sql,[mid])
    }).then(result=>{
        selectGoods.product = result;
        var sql = `SELECT mid,color FROM mi_detail_param WHERE mid=? AND classIfy="color"`
        return myQuery(sql,[mid])
    }).then(result=>{
        selectGoods.color = result;
        res.send(selectGoods)
    })
})

module.exports = router;