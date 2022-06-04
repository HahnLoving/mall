"use strict";(self["webpackChunklin_cms_vue"]=self["webpackChunklin_cms_vue"]||[]).push([[7884,9415,8403],{89415:function(e,t,n){n.r(t);var r=n(48534),u=n(13087),o=n(62833),a=(n(35666),n(12109)),i=function(){function e(){(0,u.Z)(this,e)}return(0,o.Z)(e,[{key:"createBook",value:function(){var e=(0,r.Z)(regeneratorRuntime.mark((function e(t){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,a["default"])({method:"post",url:"v1/book",data:t}));case 1:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getBook",value:function(){var e=(0,r.Z)(regeneratorRuntime.mark((function e(t){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,a.get)("v1/book/".concat(t));case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"editBook",value:function(){var e=(0,r.Z)(regeneratorRuntime.mark((function e(t,n){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,a.put)("v1/book/".concat(t),n);case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t,n){return e.apply(this,arguments)}return t}()},{key:"deleteBook",value:function(){var e=(0,r.Z)(regeneratorRuntime.mark((function e(t){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,a._delete)("v1/book/".concat(t));case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getBooks",value:function(){var e=(0,r.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,a["default"])({method:"get",url:"v1/book",handleError:!0}));case 1:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()}]),e}();t["default"]=new i},57884:function(e,t,n){n.r(t),n.d(t,{default:function(){return b}});var r=n(66252),u=function(e){return(0,r.dD)("data-v-72b00ef2"),e=e(),(0,r.Cn)(),e},o={key:0,class:"container"},a=u((function(){return(0,r._)("div",{class:"header"},[(0,r._)("div",{class:"title"},"图书列表")],-1)})),i=(0,r.Uk)("编辑"),l=(0,r.Uk)("删除");function c(e,t,n,u,c,s){var d=(0,r.up)("el-table-column"),f=(0,r.up)("el-button"),m=(0,r.up)("el-table"),p=(0,r.up)("book-modify"),k=(0,r.Q2)("loading");return(0,r.wg)(),(0,r.iD)("div",null,[u.showEdit?((0,r.wg)(),(0,r.j4)(p,{key:1,onEditClose:u.editClose,editBookId:u.editBookId},null,8,["onEditClose","editBookId"])):((0,r.wg)(),(0,r.iD)("div",o,[a,(0,r.wy)((0,r.Wm)(m,{data:u.books},{default:(0,r.w5)((function(){return[(0,r.Wm)(d,{type:"index",index:u.indexMethod,label:"序号",width:"100"},null,8,["index"]),(0,r.Wm)(d,{prop:"title",label:"书名"}),(0,r.Wm)(d,{prop:"author",label:"作者"}),(0,r.Wm)(d,{label:"操作",fixed:"right",width:"275"},{default:(0,r.w5)((function(e){return[(0,r.Wm)(f,{plain:"",size:"small",type:"primary",onClick:function(t){return u.handleEdit(e.row.id)}},{default:(0,r.w5)((function(){return[i]})),_:2},1032,["onClick"]),(0,r.Wm)(f,{plain:"",size:"small",type:"danger",onClick:function(t){return u.handleDelete(e.row.id)}},{default:(0,r.w5)((function(){return[l]})),_:2},1032,["onClick"])]})),_:1})]})),_:1},8,["data"]),[[k,u.loading]])]))])}var s=n(48534),d=(n(35666),n(62931)),f=n(59418),m=n(20610),p=n(89415),k=n(48403),v={components:{BookModify:k["default"]},setup:function(){var e=(0,d.iH)([]),t=(0,d.iH)(1),n=(0,d.iH)(!1),u=(0,d.iH)(!1);(0,r.bv)((function(){o()}));var o=function(){var t=(0,s.Z)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.prev=0,n.value=!0,t.next=4,p["default"].getBooks();case 4:e.value=t.sent,n.value=!1,t.next=12;break;case 8:t.prev=8,t.t0=t["catch"](0),n.value=!1,10020===t.t0.code&&(e.value=[]);case 12:case"end":return t.stop()}}),t,null,[[0,8]])})));return function(){return t.apply(this,arguments)}}(),a=function(e){u.value=!0,t.value=e},i=function(e){f.T.confirm("此操作将永久删除该图书, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((0,s.Z)(regeneratorRuntime.mark((function t(){var n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,p["default"].deleteBook(e);case 2:n=t.sent,n.code<window.MAX_SUCCESS_CODE&&(o(),m.z8.success("".concat(n.message)));case 4:case"end":return t.stop()}}),t)}))))},l=function(){u.value=!1,o()},c=function(e){return e+1};return{books:e,loading:n,showEdit:u,editClose:l,handleEdit:a,editBookId:t,indexMethod:c,handleDelete:i}}},w=n(83744);const h=(0,w.Z)(v,[["render",c],["__scopeId","data-v-72b00ef2"]]);var b=h},48403:function(e,t,n){n.r(t),n.d(t,{default:function(){return W}});var r=n(66252),u=n(56612),o=n(58061),a=function(e){return(0,r.dD)("data-v-154e2900"),e=e(),(0,r.Cn)(),e},i={class:"container"},l={key:0,class:"title"},c={key:1,class:"title"},s=a((function(){return(0,r._)("span",null,"修改图书",-1)})),d=(0,r.Uk)(),f=a((function(){return(0,r._)("i",{class:"iconfont icon-fanhui"},null,-1)})),m=(0,r.Uk)(" 返回 "),p=[f,m],k={class:"wrap"},v=(0,r.Uk)("保 存"),w=(0,r.Uk)("重 置");function h(e,t,n,a,f,m){var h=(0,r.up)("el-input"),b=(0,r.up)("el-form-item"),g=(0,r.up)("el-button"),y=(0,r.up)("el-form"),x=(0,r.up)("el-col"),_=(0,r.up)("el-row");return(0,r.wg)(),(0,r.iD)("div",i,[n.editBookId?((0,r.wg)(),(0,r.iD)("div",c,[s,d,(0,r._)("span",{class:"back",onClick:t[0]||(t[0]=function(){return a.back&&a.back.apply(a,arguments)})},p)])):((0,r.wg)(),(0,r.iD)("div",l,"新建图书"+(0,u.zw)(n.editBookId),1)),(0,r._)("div",k,[(0,r.Wm)(_,null,{default:(0,r.w5)((function(){return[(0,r.Wm)(x,{lg:16,md:20,sm:24,xs:24},{default:(0,r.w5)((function(){return[(0,r.Wm)(y,{model:a.book,"status-icon":"",ref:"form","label-width":"100px",onSubmit:t[5]||(t[5]=(0,o.iM)((function(){}),["prevent"])),rules:a.rules},{default:(0,r.w5)((function(){return[(0,r.Wm)(b,{label:"书名",prop:"title"},{default:(0,r.w5)((function(){return[(0,r.Wm)(h,{modelValue:a.book.title,"onUpdate:modelValue":t[1]||(t[1]=function(e){return a.book.title=e}),placeholder:"请填写书名"},null,8,["modelValue"])]})),_:1}),(0,r.Wm)(b,{label:"作者",prop:"author"},{default:(0,r.w5)((function(){return[(0,r.Wm)(h,{modelValue:a.book.author,"onUpdate:modelValue":t[2]||(t[2]=function(e){return a.book.author=e}),placeholder:"请填写作者"},null,8,["modelValue"])]})),_:1}),(0,r.Wm)(b,{label:"封面",prop:"image"},{default:(0,r.w5)((function(){return[(0,r.Wm)(h,{modelValue:a.book.image,"onUpdate:modelValue":t[3]||(t[3]=function(e){return a.book.image=e}),placeholder:"请填写封面地址"},null,8,["modelValue"])]})),_:1}),(0,r.Wm)(b,{label:"简介",prop:"summary"},{default:(0,r.w5)((function(){return[(0,r.Wm)(h,{type:"textarea",autosize:{minRows:4,maxRows:8},placeholder:"请输入简介",modelValue:a.book.summary,"onUpdate:modelValue":t[4]||(t[4]=function(e){return a.book.summary=e})},null,8,["modelValue"])]})),_:1}),(0,r.Wm)(b,{class:"submit"},{default:(0,r.w5)((function(){return[(0,r.Wm)(g,{type:"primary",onClick:a.submitForm},{default:(0,r.w5)((function(){return[v]})),_:1},8,["onClick"]),(0,r.Wm)(g,{onClick:a.resetForm},{default:(0,r.w5)((function(){return[w]})),_:1},8,["onClick"])]})),_:1})]})),_:1},8,["model","rules"])]})),_:1})]})),_:1})])])}var b=n(48534),g=(n(35666),n(9653),n(41539),n(54747),n(47941),n(62931)),y=n(20610),x=n(89415),_={props:{editBookId:{type:Number,default:null}},setup:function(e,t){var n=(0,g.iH)(null),u=(0,g.iH)(!1),o=(0,g.qj)({title:"",author:"",summary:"",image:""}),a=function(e,t){return Object.keys(e).forEach((function(n){e[n]=t[n]||e[n]}))},i=C(),l=i.rules;(0,r.bv)((function(){e.editBookId&&c()}));var c=function(){var t=(0,b.Z)(regeneratorRuntime.mark((function t(){var n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return u.value=!0,t.next=3,x["default"].getBook(e.editBookId);case 3:n=t.sent,a(o,n),u.value=!1;case 6:case"end":return t.stop()}}),t)})));return function(){return t.apply(this,arguments)}}(),s=function(){n.value.resetFields()},d=function(){var r=(0,b.Z)(regeneratorRuntime.mark((function r(u){return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:n.value.validate(function(){var n=(0,b.Z)(regeneratorRuntime.mark((function n(r){var a;return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(!r){n.next=16;break}if(a={},!e.editBookId){n.next=9;break}return n.next=5,x["default"].editBook(e.editBookId,o);case 5:a=n.sent,t.emit("editClose"),n.next=13;break;case 9:return n.next=11,x["default"].createBook(o);case 11:a=n.sent,s(u);case 13:a.code<window.MAX_SUCCESS_CODE&&y.z8.success("".concat(a.message)),n.next=18;break;case 16:console.error("error submit!!"),y.z8.error("请将信息填写完整");case 18:case"end":return n.stop()}}),n)})));return function(e){return n.apply(this,arguments)}}());case 1:case"end":return r.stop()}}),r)})));return function(e){return r.apply(this,arguments)}}(),f=function(){t.emit("editClose")};return{back:f,book:o,form:n,rules:l,resetForm:s,submitForm:d}}};function C(){var e=function(e,t,n){t||n(new Error("信息不能为空")),n()},t={title:[{validator:e,trigger:"blur",required:!0}],author:[{validator:e,trigger:"blur",required:!0}],summary:[{validator:e,trigger:"blur",required:!0}],image:[{validator:e,trigger:"blur",required:!0}]};return{rules:t}}var B=n(83744);const R=(0,B.Z)(_,[["render",h],["__scopeId","data-v-154e2900"]]);var W=R}}]);
//# sourceMappingURL=7884.33d7dbd9.js.map