// pages/Search/Search.js
const that = this;
const app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    Inputvalue: [],
    ButtonValue: [],
    hotClassify: [
      "小米Play好手机自带流量",
      "米家照片打印机",
      "圣诞玩尽兴",
      "黑鲨双翼手柄单滑轨保护壳套装-小米8定制版",
      "米兔遥控小飞机",
      "儿童电话手表",
      "小米MIX3"
    ],
    searchData: []
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {

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
  searchValue: function(e) {
    var value = e.detail.value;
    value = JSON.stringify(value)
    var that = this;
    var url = app.globalData.URL + 'search';
    wx.request({
      url: url,
      data: {
        title: value
      },
      method: 'GEt',
      success: function(res) {
        that.setData({
          searchData: res.data
        })
      }
    })
    this.setData({
      Inputvalue: e.detail.value
    })
  },
  searchButton: function(e) {
    console.log(this.data.Inputvalue)
    this.setData({
      ButtonInput: this.data.Inputvalue
    })
  },

  jumpDetail: function(e) {
    console.log(e.currentTarget.dataset.mid)
    var mid = e.currentTarget.dataset.mid;
    wx.navigateTo({
      url: '/pages/Detail/Detail?id=' + mid,
      success: function(res) {},
      fail: function(res) {},
      complete: function(res) {},
    })
  }
})