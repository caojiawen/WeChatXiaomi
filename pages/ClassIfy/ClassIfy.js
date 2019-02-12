// pages/ClassIfy/ClassIfy.js
var app = getApp()
let Datas = require('../..//assets/data_list.js').category_data;
Page({

  /**
   * 页面的初始数据
   */
  data: {
    Datas,
    curIndex: 0, //初始化当前下标为0
    toview: 'nav-0',
    active: 0,
    detail: [],
    classLeft: []
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    this.setData({
      Datas
    });
    this.getClassLeft();
  },
  getClassLeft: function() {
    var that = this;
    var url = app.globalData.URL + 'classIfy/classLeft'
    wx.request({
      url: url,
      method: 'GET',
      success: function(res) {
        that.setData({
          classLeft: res.data
        })
      }
    })
  },
  // 点击切换，滑块index赋值
  checkCurrent: function(e) {
    const that = this;
    that.setData({
      toview: e.target.dataset.current,
      active: e.target.dataset.index
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
  jumpDetail: function() {
    wx.navigateTo({
      url: '/pages/Detail/Detail',
    })

  }
})