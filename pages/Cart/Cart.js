// pages/Cart/Cart.js
let app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    selectAllStatus: true,
    cartList: [],
    button: true,
    totalPrice: 0,
    startX: 0, //开始坐标
    startY: 0,
    delSuccess: false
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {

  },
  selectAll: function(e) {
    let that = this;
    let selectAllStatus = that.data.selectAllStatus;
    selectAllStatus = !selectAllStatus;
    let carts = that.data.cartList;
    for (let i = 0; i < carts.length; i++) {
      carts[i].selected = selectAllStatus;
    }
    that.setData({
      selectAllStatus: selectAllStatus,
      cartList: carts
    })
    that.getTotalPrice();

  },
  selectList: function(e) {
    console.log(e)
    var that = this;
    const index = e.currentTarget.dataset.index;
    let carts = that.data.cartList;
    const selected = carts[index].selected;
    carts[index].selected = !selected;
    for (let i = 0; i < carts.length; i++) {
      if (carts[i].selected) {
        that.setData({
          selectAllStatus: true
        })
      } else {
        that.setData({
          selectAllStatus: false
        })
      }
    }
    this.setData({
      cartList: carts
    })
    that.getTotalPrice();
  },
  // 计算总价
  getTotalPrice() {
    console.log('lll')
    let that = this;
    let carts = that.data.cartList;
    let total = 0;
    for (let i = 0; i < carts.length; i++) {
      if (carts[i].selected) {
        total += carts[i].count * carts[i].mPrice;
      }
    }
    that.setData({
      cartList: carts,
      totalPrice: total.toFixed(2)
    })
  },
  // 跳转选择页面
  jumpCartSelect: function(e) {
    wx.navigateTo({
      url: '/pages/Cart/CartSelect/CartSelect',
      success: function(res) {}
    })
  },
  // 左滑删除---start
  touchstart: function(e) {
    //开始触摸时 重置所有删除
    this.data.cartList.forEach(function(v, i) {
      if (v.isTouchMove) //只操作为true的
        v.isTouchMove = false;
    })
    this.setData({
      startX: e.changedTouches[0].clientX,
      startY: e.changedTouches[0].clientY,
      cartList: this.data.cartList
    })
  },
  // 滑动事件处理
  touchmove: function(e) {
    var that = this,
      index = e.currentTarget.dataset.index,
      startX = that.data.startX, //开始X坐标
      startY = that.data.startY, //开始Y坐标
      touchMoveX = e.changedTouches[0].clientX, //滑动变化坐标
      touchMoveY = e.changedTouches[0].clientY, //滑动变化坐标
      //获取滑动角度
      angle = that.angle({
        X: startX,
        Y: startY
      }, {
        X: touchMoveX,
        Y: touchMoveY
      });
    that.data.cartList.forEach(function(v, i) {
      v.isTouchMove = false
      //滑动超过30度角 return
      if (Math.abs(angle) > 30) return;
      if (i == index) {
        if (touchMoveX > startX) //右滑
          v.isTouchMove = false
        else //左滑
          v.isTouchMove = true
      }
    });
    //更新数据
    that.setData({
      cartList: that.data.cartList
    })
  },
  /**
   * 计算滑动角度
   * @param {Object} start 起点坐标
   * @param {Object} end 终点坐标
   */
  angle: function(start, end) {
    var _X = end.X - start.X,
      _Y = end.Y - start.Y
    //返回角度 /Math.atan()返回数字的反正切值
    return 360 * Math.atan(_Y / _X) / (2 * Math.PI);
  },
  //删除事件
  del: function(e) {
    var url = app.globalData.URL + 'cart/removeCart';
    var id = e.currentTarget.dataset.id;
    wx.request({
      url: url,
      data: {
        id
      },
      method: 'POST',
      header: {
        "Content-Type": "application/x-www-form-urlencoded"
      },
      success: function(res) {
        var code = res.data.code;
        if (code) {
          wx.showToast({
            title: '删除成功！',
            icon: 'success',
            duration: 2000
          });
        }
      }
    })
    this.data.cartList.splice(e.currentTarget.dataset.index, 1)
    this.setData({
      cartList: this.data.cartList
    })

    this.upData()
    this.getTotalPrice();
  },
  // 左滑删除---end
  upData: function() {
    var carts = this.data.cartList
    if (carts.length < 1) {
      this.setData({
        selectAllStatus: false
      })
    } else {
      this.setData({
        selectAllStatus: true
      })
    }
  },
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {
    this.upData()
    this.getTotalPrice();
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {
    var url = app.globalData.URL + 'cart'
    let that = this;
    wx.request({
      url: url,
      success: function(res) {
        console.log(res.data)
        that.setData({
          cartList: res.data
        })
      }
    })

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

  }
})