const express = require('express');
const pool = require('../pool');
const router = express.Router();

// 轮播图
router.get('/banner',(req,res)=>{
    var sql = "SELECT id,mid,pic,classIfy FROM mi_index WHERE classIfy = 'banner'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});
// 列表图标
router.get('/icon',(req,res)=>{
    var sql = "SELECT id,mid,pic,classIfy FROM mi_index WHERE classIfy = 'icon'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});
// 推荐列表
router.get('/recommend',(req,res)=>{
    var sql = "SELECT id,mid,pic,classIfy FROM mi_index WHERE classIfy = 'recommend'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});
// 超值推荐
router.get('/overBalance',(req,res)=>{
    var sql = "SELECT * FROM mi_index WHERE classIfy = 'overBalance'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});
// 小米电视
router.get('/xiaomiTV',(req,res)=>{
    var sql = "SELECT * FROM mi_index WHERE classIfy = 'xiaomiTV'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});
// 小米笔记本
router.get('/Notebook',(req,res)=>{
    var sql = "SELECT * FROM mi_index WHERE classIfy = 'Notebook'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});
// 明星单品
router.get('/starItem',(req,res)=>{
    var sql = "SELECT * FROM mi_index WHERE classIfy = 'starItem'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});
// 新品
router.get('/newProduct',(req,res)=>{
    var sql = "SELECT * FROM mi_index WHERE classIfy = 'newProduct'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});
// 米家智能
router.get('/MIAI',(req,res)=>{
    var sql = "SELECT * FROM mi_index WHERE classIfy = 'MIAI'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});

// 更多
router.get('/rests',(req,res)=>{
    var sql = "SELECT * FROM mi_index WHERE classIfy = 'rests'";
    pool.query(sql,(err,result)=>{
        err && console.log(err);
        res.send(result)
    })
});

module.exports = router;