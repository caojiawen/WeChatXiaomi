const express = require('express');
const router = express.Router();
var myQuery = require('./query');

router.get('/', (req, res) => {
    var value = req.query.title;
    console.log(value)
    var sql = `select * from mi_detail_title where title like '%'`+value+`'%'`
    myQuery(sql,[value]).then(result => {
        console.log(result)
        res.send(result)
    })
})

module.exports = router;