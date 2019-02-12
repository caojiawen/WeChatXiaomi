const express = require('express');
const bodyParser = require('body-parser');
const pool = require("./pool");
const main = express();
// 服务器端口：5050
var server = main.listen(5050);

// 引入routes文件夹 模块
var Index = require('./routes/index');
var classIfy = require('./routes/classIfy');
var Details = require('./routes/details');
var Cart = require('./routes/cart');
var Search = require('./routes/search')

main.use(bodyParser.urlencoded({extended:false}));
// 静态资源文件夹：public
main.use(express.static('public'));

main.use('/index',Index)
main.use('/classIfy',classIfy)
main.use('/detail',Details)
main.use('/cart',Cart)
main.use('/search',Search)