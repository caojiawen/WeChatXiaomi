// pages/Detail/Detail.js
var app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    indicatorDots: true,
    autoplay: true,
    interval: 5000,
    duration: 1000,
    indicatorActiveColor: '#fff',
    banner: [],
    comment: [],
    icon: [],
    paramImg: [],
    title: {},
    param:[],
    showBox: false,
    animationData: {},
    mid: '',
    keyParameter: [{
        content: '屏幕尺寸',
        param: '6.21英寸'
      },
      {
        content: '屏幕尺寸',
        param: '6.21英寸'
      },
      {
        content: '屏幕尺寸',
        param: '6.21英寸'
      },
      {
        content: '屏幕尺寸',
        param: '6.21英寸'
      },
      {
        content: '屏幕尺寸',
        param: '6.21英寸'
      },
      {
        content: '屏幕尺寸',
        param: '6.21英寸'
      },
      {
        content: '屏幕尺寸',
        param: '6.21英寸'
      },
      {
        content: '屏幕尺寸',
        param: '6.21英寸'
      },
    ],
    intercept:false,
    intercept2:true,
    cartCount:0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    this.getCartCount()
    this.setData({
      mid: options.id
    })
    wx.getLocation({
      success: function(res) {
        console.log(res)
      },
    })
    this.getData();
    this.intercept()
  },
  intercept:function(){
    var that = this;
    var mid = that.data.mid;
    if(mid=='' || mid==null || mid==undefined || mid==0){
      that.setData({
        intercept:false,
        intercept2:true
      })
    }else{
      that.setData({
        intercept:true,
        intercept2:false
      })
    }
  },
  getData: function() {
    var that = this;
    var url = app.globalData.URL + 'detail?mid='+that.data.mid
    wx.request({
      url: url,
      method: 'GET',
      success: function(res) {
        console.log(res.data)
        var data = res.data;
        that.setData({
          dataList :data,
          banner: data.banner,
          comment: data.comment,
          icon: data.icon,
          paramImg: data.paramImg,
          title: data.title,
          param:data.param
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {
    this.getCartCount()
  },


  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {
    this.getCartCount()
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function() {
    this.getCartCount()
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
  stopPageScroll() {
    return
  },
  showBox: function() {
    var that = this;
    var animation = wx.createAnimation({
      duration: 500,
      timingFunction: 'linear'
    })
    that.animation = animation;
    animation.translateY(500).step();
    that.setData({
      showBox: true,
      animationData: animation.export()
    })
    setTimeout(function() {
      animation.translateY(0).step()
      that.setData({
        animationData: animation.export()
      })
    }, 50)
  },
  closeBox: function() {
    var that = this;
    var animation = wx.createAnimation({
      duration: 1000,
      timingFunction: 'linear'
    })
    that.animation = animation;
    animation.translateY(500).step();
    that.setData({
      animationData: animation.export()
    })
    setTimeout(function() {
      animation.translateY(0).step();
      that.setData({
        showBox: false,
        animationData: animation.export()
      })
    }, 800)
  },
  // 跳转至商品选择页
  jumpSelectGoods: function(e) {
    var that = this;
    var mid = that.data.mid
    wx.navigateTo({
      url: '/pages/Detail/selectGoods/selectGoods?mid='+mid,
      success: function(res) {
        console.log("从详情页跳转")
      }
    })
  },
  jumpCart: function(e) {
    console.log(1)
    wx.switchTab({
      url: '/pages/Cart/Cart',
    })
  },
  getCartCount:function(){
    var url = app.globalData.URL + 'cart'
    var that = this
    wx.request({
      url: url,
      method:"GET",
      success:function(res){
        var cartCount = res.data.length;
        console.log(res.data.length)
        that.setData({
          cartCount:cartCount
        })
      }
    })
  }
})