"use strict";(self["webpackChunklin_cms_vue"]=self["webpackChunklin_cms_vue"]||[]).push([[825],{20825:function(n,e,t){t.r(e),t.d(e,{default:function(){return p}});var u=t(66252),i=t(56612),a=t(58061),s=(0,u.Uk)("添加标签");function l(n,e,t,l,o,r){var c=(0,u.up)("el-tag"),p=(0,u.up)("el-input"),d=(0,u.up)("el-button");return(0,u.wg)(),(0,u.iD)("div",null,[((0,u.wg)(!0),(0,u.iD)(u.HY,null,(0,u.Ko)(t.dynamicTags,(function(n){return(0,u.wg)(),(0,u.j4)(c,{key:n,closable:"","disable-transitions":!1,onClose:function(e){return r.handleClose(n)}},{default:(0,u.w5)((function(){return[(0,u.Uk)((0,i.zw)(n),1)]})),_:2},1032,["onClose"])})),128)),o.inputVisible?((0,u.wg)(),(0,u.j4)(p,{key:0,class:"input-new-tag",modelValue:o.inputValue,"onUpdate:modelValue":e[0]||(e[0]=function(n){return o.inputValue=n}),ref:"saveTagInput",size:"small",onKeyup:(0,a.D2)(r.handleInputConfirm,["enter","native"]),onBlur:r.handleInputConfirm},null,8,["modelValue","onKeyup","onBlur"])):((0,u.wg)(),(0,u.j4)(d,{key:1,class:"button-new-tag",size:"small",onClick:r.showInput},{default:(0,u.w5)((function(){return[s]})),_:1},8,["onClick"]))])}t(40561);var o={model:{prop:"dynamicTags",event:"change"},props:{dynamicTags:{type:Array,default:function(){return[]}}},data:function(){return{inputVisible:!1,inputValue:""}},created:function(){},methods:{handleClose:function(n){this.dynamicTags.splice(this.dynamicTags.indexOf(n),1)},showInput:function(){var n=this;this.inputVisible=!0,this.$nextTick((function(){n.$refs.saveTagInput.$refs.input.focus()}))},handleInputConfirm:function(){var n=this.inputValue;n&&this.dynamicTags.push(n),this.$emit("change",this.dynamicTags),this.inputVisible=!1,this.inputValue=""}}},r=t(83744);const c=(0,r.Z)(o,[["render",l]]);var p=c}}]);
//# sourceMappingURL=825.03e89118.js.map