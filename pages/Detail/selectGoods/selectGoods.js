// pages/Detail/selectGoods/selectGoods.js
let app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    buyNumber: 1,
    _num: 0,
    __num: 0,
    headerTitle: '',
    headerPrice: '',
    colorGoods: '',
    accident: [],
    headerPic: {},
    product: [],
    prolong: [],
    color: [],
    title: [],
    checked: false,

    insuranceIndex: null,
    warrantyIndex: null,
    mid: ""
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    var that = this;
    that.setData({
      mid: options.mid
    })
    var url = app.globalData.URL + 'detail/select?mid=' + that.data.mid
    wx.request({
      url: url,
      success: function(res) {
        var data = res.data;
        console.log(data)

        that.setData({
          color: data.color,
          accident: data.accident,
          headerPic: data.pic,
          product: data.product,
          prolong: data.prolong,
          title: data.title
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {
    this.setData({
      headerTitle: this.data.product[0].size,
      headerPrice: this.data.product[0].price,
      colorGoods: this.data.color[0].color,
    })
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
  // 购买数量
  // 加
  addNumber: function() {
    var number = this.data.buyNumber
    if (number < 99) {
      number++;
      this.setData({
        buyNumber: number
      })
    } else {
      this.setData({
        buyNumber: 99
      })
    }
  },
  // 减
  subtractNumber: function() {
    var number = this.data.buyNumber
    if (number > 1) {
      number--;
      this.setData({
        buyNumber: number
      })
    } else {
      console.log("最小为1")
    }
  },
  // 输入框值
  getBuyValue: function(e) {
    var number = e.detail.value;
    if (number < 99) {
      this.setData({
        buyNumber: number
      })
    } else {
      this.setData({
        buyNumber: 99
      })
    }
  },
  // 版本切换
  menuClick: function(e) {
    this.setData({
      _num: e.target.dataset.num,
      headerTitle: e.currentTarget.dataset.title,
      headerPrice: e.currentTarget.dataset.price
    })
  },
  // 颜色切换
  colorClick: function(e) {
    var colorGoods = e.currentTarget.dataset.colorgoods
    this.setData({
      __num: e.target.dataset.num,
      colorGoods: colorGoods
    })
  },
  // 意外保护
  insurance: function(e) {
    var insurance = e.currentTarget.dataset.insurance;
    var insuranceIndex = this.data.insuranceIndex;
    if (insuranceIndex === insurance) {
      this.setData({
        insuranceIndex: null
      })
    } else {
      this.setData({
        insuranceIndex: insurance
      })
    }
  },
  // 延长保修
  warranty: function(e) {
    var warranty = e.currentTarget.dataset.warranty;
    var warrantyIndex = this.data.warrantyIndex;
    if (warrantyIndex === warranty) {
      this.setData({
        warrantyIndex: null
      })
    } else {
      this.setData({
        warrantyIndex: warranty
      })
    }
  },
  addCart: function() {
    let that = this;
    var mSize = that.data.headerTitle;
    var mColor = that.data.colorGoods;
    var count = that.data.buyNumber;
    var mid = that.data.mid;
    var mPrice = that.data.headerPrice;
    var mName = that.data.title[0].title;
    var mPic = that.data.headerPic.pic
    var mydata = {
      mid,
      mName,
      mPrice,
      mPic,
      mSize,
      mColor,
      count
    }
    var url = app.globalData.URL + 'cart/addCart';
    console.log('mid:' + mid)
    wx.request({
      url: url,
      data: {
        mid,
        mName,
        mPrice,
        mPic,
        mSize,
        mColor,
        count
      },
      header: {
        "Content-Type": "application/x-www-form-urlencoded"
      },
      method: 'POST',
      success: function(res) {
        var code = res.data.code;
        console.log(res)
        if (code) {
          wx.showToast({
            title: '加入购物车成功！',
            icon: 'success',
            duration: 2000
          });
        } else {
          wx.showLoading({
            title: '加载中',
          })
          setTimeout(function() {
            wx.hideLoading()
          }, 2000)
        }
      }
    })

    setTimeout(function() {
      wx.hideToast();
      var pages = getCurrentPages(); // 获取页面栈
      var currPage = pages[pages.length - 1]; // 当前页面
      var prevPage = pages[pages.length - 2];
      prevPage.setData({
        mydata: mydata
      })
      wx.navigateBack({

        delta: 1

      })

    }, 500)
  }
})