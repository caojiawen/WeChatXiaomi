// pages/Index/Index.js
const app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    // 轮播图
    BannerImg: [],
    indicatorDots: true,
    autoplay: true,
    interval: 5000,
    duration: 1000,
    indicatorActiveColor: '#fff',
    // 商品分类
    IndexIcon: [],
    // 商品推荐
    recommend: [],
    // 超值推荐
    overBalance: [],
    oneImg:[],
    xiaoMiTV: [],
    Notebook:[],
    StarItem: [],
    newProduct: [],
    MiAI: [
      '/assets/images/Index/MiAi/images/list1.jpg',
      '/assets/images/Index/MiAi/images/list2.webp',
      '/assets/images/Index/MiAi/images/list3.webp',
    ],
    Rests: []
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    this.getBanner();
    this.getIcon();
    this.getRecommend();
    this.getOverBalance();
    this.getXiaoMiTV();
    this.getNotebook();
    this.getStarItem();
    this.getNewProduct();
    this.getMIAI();
    this.getRests();
  },
  // 获取轮播图图片
  getBanner: function() {
    var that = this;
    var url = app.globalData.URL + 'index/banner';
    wx.request({
      url: url,
      method: 'GET',
      success: function(res) {
        that.setData({
          BannerImg: res.data
        })
      }
    })
  },
  getIcon: function() {
    var that = this;
    var url = app.globalData.URL + 'index/icon';
    wx.request({
      url: url,
      method: 'GET',
      success: function(res) {
        that.setData({
          IndexIcon: res.data
        })
      }
    })
  },
  getRecommend:function(){
    var that = this;
    var url = app.globalData.URL + 'index/recommend';
    wx.request({
      url: url,
      method:'GET',
      success:function(res){
        that.setData({
          recommend:res.data
        })
      }
    })
  },
  getOverBalance:function(){
    var that = this;
    var url = app.globalData.URL +'index/overBalance';
    wx.request({
      url: url,
      method:'GET',
      success:function(res){
        var one = res.data.shift()
        var str = res.data;
        that.data.oneImg.push(one)
        that.setData({
          overBalance:str,
        })
      }
    })
  },
  getXiaoMiTV:function(){
    var that = this;
    var url = app.globalData.URL + 'index/xiaomiTV';
    wx.request({
      url: url,
      method: 'GET',
      success: function (res) {
        var one = res.data.shift()
        var str = res.data;
        that.data.oneImg.push(one)
        that.setData({
          xiaoMiTV: str,
        })
      }
    })
  },
  getNotebook: function () {
    var that = this;
    var url = app.globalData.URL + 'index/Notebook';
    wx.request({
      url: url,
      method: 'GET',
      success: function (res) {
        var one = res.data.shift()
        var str = res.data;
        that.data.oneImg.push(one)
        that.setData({
          Notebook: str,
        })
      }
    })
  }, 
  getStarItem: function () {
    var that = this;
    var url = app.globalData.URL + 'index/starItem';
    wx.request({
      url: url,
      method: 'GET',
      success: function (res) {
        var one = res.data.shift()
        var str = res.data;
        that.data.oneImg.push(one)
        that.setData({
          StarItem: str,
        })
      }
    })
  },
  getNewProduct: function () {
    var that = this;
    var url = app.globalData.URL + 'index/newProduct';
    wx.request({
      url: url,
      method: 'GET',
      success: function (res) {
        var one = res.data.shift()
        var str = res.data;
        that.data.oneImg.push(one)
        that.setData({
          newProduct: str,
        })
      }
    })
  },
  getMIAI: function () {
    var that = this;
    var url = app.globalData.URL + 'index/MIAI';
    wx.request({
      url: url,
      method: 'GET',
      success: function (res) {
        var one = res.data.shift()
        var str = res.data;
        that.data.oneImg.push(one)
        that.setData({
          MiAI: str,
        })
      }
    })
  },
  getRests: function () {
    var that = this;
    var url = app.globalData.URL + 'index/rests';
    wx.request({
      url: url,
      method: 'GET',
      success: function (res) {
        var str = res.data;
        that.setData({
          Rests: str,
        })
      }
    })
  },
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function() {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  },
  // 跳转到搜索页面
  jumpSearch: function(e) {
    wx.navigateTo({
      url: '/pages/Search/Search',
    })
  },
  // 跳转详情页
  jumpDetail:function(e){
    console.log(e.currentTarget.dataset.mid)
    var mid = e.currentTarget.dataset.mid;
    wx.navigateTo({
      url: '/pages/Detail/Detail?id='+mid,
      success: function(res) {},
      fail: function(res) {},
      complete: function(res) {},
    })
  }
})