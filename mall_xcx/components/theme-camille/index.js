import {themeBehavior} from "../behaviors/theme-beh";

Component({
    behaviors: [themeBehavior],
    /**
     * 组件的属性列表
     */
    properties: {},

    /**
     * 组件的初始数据
     */
    data: {},

    /**
     * 组件的方法列表
     */
    methods: {
        onLoadImg(event) {
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
