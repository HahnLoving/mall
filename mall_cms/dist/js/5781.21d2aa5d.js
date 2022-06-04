"use strict";(self["webpackChunklin_cms_vue"]=self["webpackChunklin_cms_vue"]||[]).push([[5781,7551,2343,4619,8630],{87551:function(e,t,r){r.r(t);var n=r(48534),u=r(13087),a=r(62833),i=(r(35666),r(12109)),c=function(){function e(){(0,u.Z)(this,e)}return(0,a.Z)(e,null,[{key:"addSku",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("v1/sku",t);case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSku",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/sku/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSkuDetail",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/sku/".concat(t,"/detail"));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"editSku",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t,r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("v1/sku/".concat(t),r);case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function t(t,r){return e.apply(this,arguments)}return t}()},{key:"deleteSku",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i._delete)("v1/sku/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSkus",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t,r,n,u=arguments;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t=u.length>0&&void 0!==u[0]?u[0]:0,r=u.length>1&&void 0!==u[1]?u[1]:10,e.next=4,(0,i.get)("v1/sku/page",{page:t,count:r});case 4:return n=e.sent,e.abrupt("return",n);case 6:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()},{key:"getBySpuId",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/sku/by/spu/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSpecValueId",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t,r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/sku/spec-value-id",{key_id:r,sku_id:t});case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function t(t,r){return e.apply(this,arguments)}return t}()}]),e}();t["default"]=c},32343:function(e,t,r){r.r(t);var n=r(48534),u=r(13087),a=r(62833),i=(r(35666),r(12109)),c=function(){function e(){(0,u.Z)(this,e)}return(0,a.Z)(e,null,[{key:"addSpecKey",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("v1/spec-key",t);case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSpecKey",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spec-key/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSpecKeyDetail",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spec-key/".concat(t,"/detail"));case 2:return r=e.sent,e.abrupt("return",r);case 5:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"editSpecKey",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t,r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("v1/spec-key/".concat(t),r);case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function t(t,r){return e.apply(this,arguments)}return t}()},{key:"deleteSpecKey",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i._delete)("v1/spec-key/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSpecKeys",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t,r,n,u=arguments;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t=u.length>0&&void 0!==u[0]?u[0]:0,r=u.length>1&&void 0!==u[1]?u[1]:10,e.next=4,(0,i.get)("v1/spec-key/page",{page:t,count:r});case 4:return n=e.sent,e.abrupt("return",n);case 6:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()},{key:"getList",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spec-key/list");case 2:return t=e.sent,e.abrupt("return",t);case 4:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()},{key:"getBySpuId",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spec-key/by/spu/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()}]),e}();t["default"]=c},94619:function(e,t,r){r.r(t);var n=r(48534),u=r(13087),a=r(62833),i=(r(35666),r(12109)),c=function(){function e(){(0,u.Z)(this,e)}return(0,a.Z)(e,null,[{key:"addSpecValue",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("v1/spec-value",t);case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSpecValue",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spec-value/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"editSpecValue",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t,r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("v1/spec-value/".concat(t),r);case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function t(t,r){return e.apply(this,arguments)}return t}()},{key:"deleteSpecValue",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i._delete)("v1/spec-value/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSpecValues",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t,r,n,u=arguments;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t=u.length>0&&void 0!==u[0]?u[0]:0,r=u.length>1&&void 0!==u[1]?u[1]:10,e.next=4,(0,i.get)("v1/spec-value/page",{page:t,count:r});case 4:return n=e.sent,e.abrupt("return",n);case 6:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()},{key:"getBySpecKeyId",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spec-value/by/spec-key/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()}]),e}();t["default"]=c},48630:function(e,t,r){r.r(t);var n=r(48534),u=r(13087),a=r(62833),i=(r(35666),r(12109)),c=function(){function e(){(0,u.Z)(this,e)}return(0,a.Z)(e,null,[{key:"addSpu",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("v1/spu",t);case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSpu",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spu/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getDetail",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spu/".concat(t,"/detail"));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"editSpu",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t,r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("v1/spu/".concat(t),r);case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function t(t,r){return e.apply(this,arguments)}return t}()},{key:"deleteSpu",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i._delete)("v1/spu/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getSpus",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t,r,n,u=arguments;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t=u.length>0&&void 0!==u[0]?u[0]:0,r=u.length>1&&void 0!==u[1]?u[1]:10,e.next=4,(0,i.get)("v1/spu/page",{page:t,count:r});case 4:return n=e.sent,e.abrupt("return",n);case 6:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()},{key:"getList",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spu/list");case 2:return t=e.sent,e.abrupt("return",t);case 4:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()},{key:"getSpecKeys",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("v1/spu/key",{id:t});case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"addSpecKey",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("v1/spu/key",t);case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()}]),e}();t["default"]=c},5781:function(e,t,r){r.r(t),r.d(t,{default:function(){return I}});r(68309);var n=r(66252),u=r(56612),a=r(58061),i=function(e){return(0,n.dD)("data-v-66fd235a"),e=e(),(0,n.Cn)(),e},c={class:"title"},o=i((function(){return(0,n._)("i",{class:"iconfont icon-fanhui"},null,-1)})),s=(0,n.Uk)(" 返回 "),l=[o,s],p={class:"container"},f={class:"wrap"},d=(0,n.Uk)("无折扣"),m=(0,n.Uk)("折扣价"),v=(0,n.Uk)("打折"),h={class:"id"},g={class:"name"},w=(0,n.Uk)("保 存");function k(e,t,r,i,o,s){var k=(0,n.up)("el-divider"),y=(0,n.up)("sticky-top"),x=(0,n.up)("el-input"),b=(0,n.up)("el-form-item"),R=(0,n.up)("el-input-number"),S=(0,n.up)("el-radio"),_=(0,n.up)("el-radio-group"),Z=(0,n.up)("el-autocomplete"),V=(0,n.up)("el-switch"),W=(0,n.up)("upload-imgs"),U=(0,n.up)("el-cascader"),K=(0,n.up)("el-button"),C=(0,n.up)("el-form"),I=(0,n.up)("el-col"),z=(0,n.up)("el-row"),D=(0,n.Q2)("permission");return(0,n.wg)(),(0,n.iD)("div",null,[(0,n.Wm)(y,null,{default:(0,n.w5)((function(){return[(0,n._)("div",c,[(0,n._)("span",null,(0,u.zw)(r.isCreate?"创建SKU":"更新SKU"),1),(0,n._)("span",{class:"back",onClick:t[0]||(t[0]=function(){return s.back&&s.back.apply(s,arguments)})},l),(0,n.Wm)(k)])]})),_:1}),(0,n._)("div",p,[(0,n._)("div",f,[(0,n.Wm)(z,null,{default:(0,n.w5)((function(){return[(0,n.Wm)(I,{lg:16,md:20,sm:24,xs:24},{default:(0,n.w5)((function(){return[(0,n.Wm)(C,{model:o.form,"status-icon":"",ref:"form","label-width":"100px",onSubmit:t[11]||(t[11]=(0,a.iM)((function(){}),["prevent"]))},{default:(0,n.w5)((function(){return[(0,n.Wm)(b,{label:"标题",prop:"title"},{default:(0,n.w5)((function(){return[(0,n.Wm)(x,{size:"medium",modelValue:o.form.title,"onUpdate:modelValue":t[1]||(t[1]=function(e){return o.form.title=e}),placeholder:"请填写标题"},null,8,["modelValue"])]})),_:1}),(0,n.Wm)(b,{label:"价格",prop:"price"},{default:(0,n.w5)((function(){return[(0,n.Wm)(R,{modelValue:o.form.price,"onUpdate:modelValue":t[2]||(t[2]=function(e){return o.form.price=e}),precision:2,step:.1},null,8,["modelValue","step"])]})),_:1}),(0,n.Wm)(b,{label:"折扣价",prop:"rate_price"},{default:(0,n.w5)((function(){return[(0,n.Wm)(_,{modelValue:o.radio,"onUpdate:modelValue":t[3]||(t[3]=function(e){return o.radio=e})},{default:(0,n.w5)((function(){return[(0,n.Wm)(S,{label:1},{default:(0,n.w5)((function(){return[d]})),_:1}),(0,n.Wm)(S,{label:2},{default:(0,n.w5)((function(){return[m]})),_:1}),(0,n.Wm)(S,{label:3},{default:(0,n.w5)((function(){return[v]})),_:1})]})),_:1},8,["modelValue"]),(0,n.Wm)(x,{disabled:1===o.radio,style:{margin:"5px 0"},size:"medium",modelValue:o.discount_price_kernel,"onUpdate:modelValue":t[4]||(t[4]=function(e){return o.discount_price_kernel=e})},null,8,["disabled","modelValue"]),(0,n.Wm)(x,{disabled:"",size:"medium",modelValue:o.form.rate_price,"onUpdate:modelValue":t[5]||(t[5]=function(e){return o.form.rate_price=e})},null,8,["modelValue"])]})),_:1}),r.isCreate?(0,n.kq)("",!0):((0,n.wg)(),(0,n.j4)(b,{key:0,label:"编码",prop:"code"},{default:(0,n.w5)((function(){return[(0,n.Wm)(x,{disabled:"",size:"medium",modelValue:o.form.code,"onUpdate:modelValue":t[6]||(t[6]=function(e){return o.form.code=e}),placeholder:"请填写编码"},null,8,["modelValue"])]})),_:1})),(0,n.Wm)(b,{label:"库存",prop:"stock"},{default:(0,n.w5)((function(){return[(0,n.Wm)(R,{modelValue:o.form.stock,"onUpdate:modelValue":t[7]||(t[7]=function(e){return o.form.stock=e}),step:1,"step-strictly":""},null,8,["modelValue"])]})),_:1}),(0,n.Wm)(b,{label:"SPU",prop:"spu_id"},{default:(0,n.w5)((function(){return[(0,n.Wm)(Z,{onFocus:s.loadSpuSuggestions,"popper-class":"my-autocomplete",class:"inline-input",modelValue:o.spuState,"onUpdate:modelValue":t[8]||(t[8]=function(e){return o.spuState=e}),"fetch-suggestions":s.querySpuSearch,placeholder:"请填写所属SPU",onSelect:s.handleSpuSelect},{default:(0,n.w5)((function(e){var t=e.item;return[(0,n._)("span",h,(0,u.zw)(t.id),1),(0,n._)("span",g,(0,u.zw)(t.title),1)]})),_:1},8,["onFocus","modelValue","fetch-suggestions","onSelect"])]})),_:1}),(0,n.Wm)(b,{label:"是否上架"},{default:(0,n.w5)((function(){return[(0,n.Wm)(V,{size:"medium",modelValue:o.saled,"onUpdate:modelValue":t[9]||(t[9]=function(e){return o.saled=e}),"active-color":"#13ce66","inactive-color":"#ff4949","active-text":"上架","inactive-text":"下架"},null,8,["modelValue"])]})),_:1}),(0,n.Wm)(b,{label:"图片",prop:"img"},{default:(0,n.w5)((function(){return[(0,n.Wm)(W,{"max-num":o.maxNum,ref:"uploadEle",value:o.initData},null,8,["max-num","value"])]})),_:1}),((0,n.wg)(!0),(0,n.iD)(n.HY,null,(0,n.Ko)(o.specKeys,(function(e,t){return(0,n.wg)(),(0,n.j4)(b,{key:t,label:"选择".concat(e.name),prop:e.name},{default:(0,n.w5)((function(){return[(0,n.Wm)(U,{placeholder:"选择".concat(e.name),modelValue:o.specs[t],"onUpdate:modelValue":function(e){return o.specs[t]=e},props:s.makeProps(e.id)},null,8,["placeholder","modelValue","onUpdate:modelValue","props"])]})),_:2},1032,["label","prop"])})),128)),(0,n.Wm)(b,{class:"submit"},{default:(0,n.w5)((function(){return[(0,n.wy)((0,n.Wm)(K,{type:"primary",onClick:t[10]||(t[10]=function(e){return s.submitForm("form")})},{default:(0,n.w5)((function(){return[w]})),_:1},512),[[D,{permission:["创建SKU","更新SKU"],type:"disabled"}]])]})),_:1})]})),_:1},8,["model"])]})),_:1})]})),_:1})])])])}var y=r(95082),x=(r(82526),r(41817),r(41539),r(32165),r(78783),r(33948),r(12780));function b(e,t){var r="undefined"!==typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(!r){if(Array.isArray(e)||(r=(0,x.Z)(e))||t&&e&&"number"===typeof e.length){r&&(e=r);var n=0,u=function(){};return{s:u,n:function(){return n>=e.length?{done:!0}:{done:!1,value:e[n++]}},e:function(e){throw e},f:u}}throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}var a,i=!0,c=!1;return{s:function(){r=r.call(e)},n:function(){var e=r.next();return i=e.done,e},e:function(e){c=!0,a=e},f:function(){try{i||null==r["return"]||r["return"]()}finally{if(c)throw a}}}}var R=r(48534),S=(r(21249),r(92222),r(57327),r(35666),r(48630)),_=r(87551),Z=r(32343),V=r(94619),W=r(5892),U={components:{UploadImgs:W["default"]},props:{isCreate:{type:Boolean,default:!1},skuId:{type:String,default:null}},data:function(){return{form:{title:"",online:1,price:0,rate_price:null,currency:null,code:null,stock:null,img:null},rules:{minWidth:10,minHeight:10,maxSize:5},radio:1,discount_price_kernel:null,initData:[],maxNum:1,saled:!0,spuState:"",spuList:[],specs:[],specKeys:[]}},watch:{saled:function(e){this.form.online=e?1:0},discount_price_kernel:function(e){switch(this.radio){case 1:this.form.rate_price=null;break;case 2:this.form.rate_price=e;break;case 3:var t=parseFloat(e);this.form.rate_price=this.form.price*t;break;default:this.form.rate_price=null}}},created:function(){var e=this;return(0,R.Z)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.$nextTick((0,R.Z)(regeneratorRuntime.mark((function t(){var r,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(e.isCreate){t.next=11;break}return t.next=3,_["default"].getSkuDetail(e.skuId);case 3:return r=t.sent,e.form=r,n=[{id:r.id,display:r.img}],e.saled=1===r.online,e.initData=n,e.spuState=r.spu_name,t.next=11,e.loadKeyAndValues(r.spu_id);case 11:case"end":return t.stop()}}),t)}))));case 1:case"end":return t.stop()}}),t)})))()},methods:{loadKeyAndValues:function(e){var t=this;return(0,R.Z)(regeneratorRuntime.mark((function r(){var n,u,a,i,c;return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return r.next=2,Z["default"].getBySpuId(e);case 2:n=r.sent,t.specKeys=n,u=b(n),r.prev=5,u.s();case 7:if((a=u.n()).done){r.next=15;break}return i=a.value,r.next=11,_["default"].getSpecValueId(t.skuId,i.id);case 11:c=r.sent,t.specs.push([c.value_id]);case 13:r.next=7;break;case 15:r.next=20;break;case 17:r.prev=17,r.t0=r["catch"](5),u.e(r.t0);case 20:return r.prev=20,u.f(),r.finish(20);case 23:case"end":return r.stop()}}),r,null,[[5,17,20,23]])})))()},submitForm:function(e){var t=this;return(0,R.Z)(regeneratorRuntime.mark((function e(){var r,n,u,a,i,c,o;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,t.getValue();case 2:for(e.prev=2,r=(0,y.Z)({},t.form),n=[],u=0;u<t.specs.length;u++)a=t.specs[u],i=t.specKeys[u],c={key_id:i.id,value_id:a[0]},n.push(c);if(r.selectors=n,!t.isCreate){e.next=13;break}return e.next=10,_["default"].addSku(r);case 10:o=e.sent,e.next=16;break;case 13:return e.next=15,_["default"].editSku(t.skuId,r);case 15:o=e.sent;case 16:o.code<window.MAX_SUCCESS_CODE&&(t.$message.success("".concat(o.message)),t.$confirm("是否返回上一页?","提示",{confirmButtonText:"是",cancelButtonText:"否",type:"info"}).then((0,R.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:t.$emit("editClose");case 1:case"end":return e.stop()}}),e)}))))),e.next=22;break;case 19:e.prev=19,e.t0=e["catch"](2),console.error(e.t0);case 22:case"end":return e.stop()}}),e,null,[[2,19]])})))()},makeProps:function(e){return{lazy:!0,lazyLoad:function(t,r){return(0,R.Z)(regeneratorRuntime.mark((function n(){var u,a,i;return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return u=t.level,n.next=3,V["default"].getBySpecKeyId(e);case 3:a=n.sent,i=a.map((function(e){return{value:e.id,label:"".concat(e.id," - ").concat(e.value),leaf:u>=0}})),r(i);case 6:case"end":return n.stop()}}),n)})))()}}},resetForm:function(e){this.$refs[e].resetFields()},querySpuSearch:function(e,t){var r=this.spuList,n=e?r.filter(this.createSpuFilter(e)):r;t(n)},createSpuFilter:function(e){return function(t){return 0===t.title.toLowerCase().indexOf(e.toLowerCase())}},handleSpuSelect:function(e){this.spuState=e.title,this.form.spu_id=e.id,this.loadKeyAndValues(e.id)},getValue:function(){var e=this;return(0,R.Z)(regeneratorRuntime.mark((function t(){var r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,e.$refs.uploadEle.getValue();case 2:r=t.sent,r&&r.length>0&&(e.form.img=r[0].display);case 4:case"end":return t.stop()}}),t)})))()},back:function(){this.$emit("editClose")},loadSpuSuggestions:function(){var e=this;return(0,R.Z)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!(e.spuList.length>0)){t.next=2;break}return t.abrupt("return");case 2:return t.prev=2,t.next=5,S["default"].getList();case 5:e.spuList=t.sent,0===e.spuList.length&&e.$message.error("未找到SPU建议，请先添加SPU"),t.next=13;break;case 9:t.prev=9,t.t0=t["catch"](2),e.$message.error("获取SPU建议信息失败"),console.error(t.t0);case 13:case"end":return t.stop()}}),t,null,[[2,9]])})))()}}},K=r(83744);const C=(0,K.Z)(U,[["render",k],["__scopeId","data-v-66fd235a"]]);var I=C}}]);
//# sourceMappingURL=5781.21d2aa5d.js.map