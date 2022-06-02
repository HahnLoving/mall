// components/theme-diana/index.js

// const themeBehavior = require('../behaviors/theme-beh')
import {themeBehavior} from "../behaviors/theme-beh";

Component({
  /**
   * 组件的属性列表
   */

  behaviors:[themeBehavior],
  properties: {

  },

  attached() {
  },

  /**
   * 组件的初始数据
   */
  data: {

  },

  /**
   * 组件的方法列表
   */
  methods: {
    onLoadImg(event) {
      // const {height, width} = event.detail
      // console.log(height,width)
      // this.setData({
      //   h: height,
      //   w: width,
      // })
      const {height, width} = event.detail
      let w = 750
      let s = 750/width
      let h = height*s
      console.log(h,w)
      this.setData({
          h: h,
          w: w,
      })
    }
  }
})
