"use strict";(self["webpackChunklin_cms_vue"]=self["webpackChunklin_cms_vue"]||[]).push([[4048,370,3602,7386],{63602:function(e,t,r){r.r(t);var n=r(48534),a=r(13087),i=r(62833),o=(r(35666),r(12109)),u=function(){function e(){(0,a.Z)(this,e)}return(0,i.Z)(e,null,[{key:"addCategory",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,o.post)("v1/category",t);case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getCategory",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,o.get)("v1/category/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"editCategory",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t,r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,o.put)("v1/category/".concat(t),r);case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function t(t,r){return e.apply(this,arguments)}return t}()},{key:"deleteCategory",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(t){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,o._delete)("v1/category/".concat(t));case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()},{key:"getCategories",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t,r,n,a,i=arguments;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t=i.length>0&&void 0!==i[0]?i[0]:0,r=i.length>1&&void 0!==i[1]?i[1]:10,n=i.length>2&&void 0!==i[2]?i[2]:1,e.next=5,(0,o.get)("v1/category/page",{page:t,count:r,root:n});case 5:return a=e.sent,e.abrupt("return",a);case 7:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()},{key:"getSubCategories",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t,r,n,a,i=arguments;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t=i.length>0&&void 0!==i[0]?i[0]:0,r=i.length>1&&void 0!==i[1]?i[1]:10,n=i.length>2&&void 0!==i[2]?i[2]:1,e.next=5,(0,o.get)("v1/category/sub-page",{page:t,count:r,id:n});case 5:return a=e.sent,e.abrupt("return",a);case 7:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()},{key:"getList",value:function(){var e=(0,n.Z)(regeneratorRuntime.mark((function e(){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,o.get)("v1/category/list");case 2:return t=e.sent,e.abrupt("return",t);case 4:case"end":return e.stop()}}),e)})));function t(){return e.apply(this,arguments)}return t}()}]),e}();t["default"]=u},42042:function(e,t,r){r.r(t),r.d(t,{default:function(){return w}});r(68309),r(82526),r(41817);var n=r(66252),a=r(56612),i=r(58061),o={style:{"margin-top":"-25px"}},u={class:"dialog-title"},l={slot:"footer",class:"dialog-footer",style:{"padding-left":"5px"}},s=(0,n.Uk)("确 定");function c(e,t,r,c,d,p){var m=(0,n.up)("el-input"),g=(0,n.up)("el-form-item"),f=(0,n.up)("el-switch"),h=(0,n.up)("upload-imgs"),v=(0,n.up)("el-form"),w=(0,n.up)("el-button"),y=(0,n.Q2)("permission");return(0,n.wg)(),(0,n.iD)(n.HY,null,[(0,n._)("div",o,[(0,n._)("div",u,[(0,n._)("span",null,(0,a.zw)(r.isCreate?"创建分类":"更新分类"),1)]),(0,n.Wm)(v,{model:d.form,"status-icon":"",ref:"form","label-width":"100px",onSubmit:t[4]||(t[4]=(0,i.iM)((function(){}),["prevent"]))},{default:(0,n.w5)((function(){return[(0,n.Wm)(g,{label:"名称",prop:"name"},{default:(0,n.w5)((function(){return[(0,n.Wm)(m,{size:"medium",modelValue:d.form.name,"onUpdate:modelValue":t[0]||(t[0]=function(e){return d.form.name=e}),placeholder:"请填写分类名"},null,8,["modelValue"])]})),_:1}),(0,n.Wm)(g,{label:"排序",prop:"index"},{default:(0,n.w5)((function(){return[(0,n.Wm)(m,{size:"medium",modelValue:d.form.index,"onUpdate:modelValue":t[1]||(t[1]=function(e){return d.form.index=e}),placeholder:"请填写分类排序"},null,8,["modelValue"])]})),_:1}),(0,n.Wm)(g,{label:"显示上线",prop:"online"},{default:(0,n.w5)((function(){return[(0,n.Wm)(f,{modelValue:d.display,"onUpdate:modelValue":t[2]||(t[2]=function(e){return d.display=e}),"active-color":"#13ce66","inactive-color":"#ff4949","active-text":"上线","inactive-text":"下线"},null,8,["modelValue"])]})),_:1}),(0,n.Wm)(g,{label:"图片",prop:"img"},{default:(0,n.w5)((function(){return[(0,n.Wm)(h,{ref:"uploadEle","max-num":d.maxNum,value:d.initData},null,8,["max-num","value"])]})),_:1}),(0,n.Wm)(g,{label:"描述",prop:"description"},{default:(0,n.w5)((function(){return[(0,n.Wm)(m,{size:"medium",modelValue:d.form.description,"onUpdate:modelValue":t[3]||(t[3]=function(e){return d.form.description=e}),type:"textarea",rows:1,placeholder:"请填写描述"},null,8,["modelValue"])]})),_:1})]})),_:1},8,["model"])]),(0,n._)("div",l,[(0,n.wy)((0,n.Wm)(w,{type:"primary",onClick:p.submitForm},{default:(0,n.w5)((function(){return[s]})),_:1},8,["onClick"]),[[y,{permission:"更新分类",type:"disabled"}]])])],64)}var d=r(95082),p=r(48534),m=(r(35666),r(9653),r(63602)),g=r(5892),f={components:{UploadImgs:g["default"]},props:{dialogFormVisible:{type:Boolean,default:!1},isCreate:{type:Boolean,default:!1},categoryId:{type:Number,default:0},isSub:{type:Boolean,default:!1}},computed:{visible:{get:function(){return this.dialogFormVisible},set:function(){}}},data:function(){return{display:!0,initData:[],maxNum:1,form:{name:"",is_root:0,parent_id:null,description:"",online:1,index:null}}},watch:{display:function(e){this.form.online=e?1:0}},mounted:function(){var e=this;return(0,p.Z)(regeneratorRuntime.mark((function t(){var r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(e.isCreate){t.next=7;break}return t.next=3,m["default"].getCategory(e.categoryId);case 3:r=t.sent,e.form=r,e.display=1===r.online,e.initData=[{display:r.img}];case 7:e.isSub?(e.form.parent_id=e.$route.params.id,e.form.is_root=0):(e.form.parent_id=null,e.form.is_root=1);case 8:case"end":return t.stop()}}),t)})))()},methods:{submitForm:function(){var e=this;return(0,p.Z)(regeneratorRuntime.mark((function t(){var r,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,e.getValue();case 2:if(r=(0,d.Z)({},e.form),!e.isCreate){t.next=9;break}return t.next=6,m["default"].addCategory(r);case 6:n=t.sent,t.next=12;break;case 9:return t.next=11,m["default"].editCategory(e.categoryId,r);case 11:n=t.sent;case 12:n.code<window.MAX_SUCCESS_CODE&&(e.$message.success("".concat(n.message)),e.$emit("dialogClose"));case 13:case"end":return t.stop()}}),t)})))()},getValue:function(){var e=this;return(0,p.Z)(regeneratorRuntime.mark((function t(){var r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,e.$refs.uploadEle.getValue();case 2:r=t.sent,r&&r.length>0&&(e.form.img=r[0].display);case 4:case"end":return t.stop()}}),t)})))()},resetForm:function(e){this.$refs[e].resetFields()},handleClose:function(e){e(),this.$emit("dialogClose")}}},h=r(83744);const v=(0,h.Z)(f,[["render",c],["__scopeId","data-v-eada8af0"]]);var w=v},76139:function(e,t,r){r.r(t),r.d(t,{default:function(){return C}});var n=r(66252),a=r(56612),i=r(58061),o={class:"container"},u={class:"header"},l={class:"title"},s=(0,n.Uk)("创建子分类"),c=(0,n.Uk)("编辑"),d=(0,n.Uk)("删除"),p={class:"pagination"},m={key:0};function g(e,t,r,g,f,h){var v=(0,n.up)("el-button"),w=(0,n.up)("el-table-column"),y=(0,n.up)("el-image"),b=(0,n.up)("el-table"),C=(0,n.up)("el-pagination"),x=(0,n.up)("category-edit"),k=(0,n.up)("el-dialog"),_=(0,n.Q2)("permission"),V=(0,n.Q2)("loading");return(0,n.wg)(),(0,n.iD)("div",o,[(0,n._)("div",u,[(0,n._)("div",l,(0,a.zw)(f.superCategoryName)+"分类列表",1),(0,n.wy)((0,n.Wm)(v,{style:{"margin-left":"30px"},onClick:(0,i.iM)(h.handleAdd,["prevent"]),type:"primary",plain:"",size:"medium"},{default:(0,n.w5)((function(){return[s]})),_:1},8,["onClick"]),[[_,{permission:"创建分类",type:"disabled"}]])]),(0,n.wy)((0,n.Wm)(b,{stripe:"",data:f.tableData},{default:(0,n.w5)((function(){return[(0,n.Wm)(w,{prop:"id",label:"id",width:"100"}),(0,n.Wm)(w,{prop:"img",label:"图片",width:"200"},{default:(0,n.w5)((function(e){return[(0,n.Wm)(y,{src:e.row.img,"preview-src-list":f.imgSrcList,style:{"max-height":"50px","max-width":"100px"}},null,8,["src","preview-src-list"])]})),_:1}),(0,n.Wm)(w,{prop:"name",label:"名称",width:"150"}),(0,n.Wm)(w,{prop:"index",label:"排序",width:"150"}),(0,n.Wm)(w,{prop:"online",label:"状态",width:"100"},{default:(0,n.w5)((function(t){return[(0,n.Uk)((0,a.zw)(t.row.online|e.onlineFormat),1)]})),_:1}),(0,n.Wm)(w,{prop:"description",label:"描述","min-width":"200","show-overflow-tooltip":!0}),(0,n.Wm)(w,{fixed:"right",width:"200",label:"操作"},{default:(0,n.w5)((function(e){return[(0,n.Wm)(v,{onClick:(0,i.iM)((function(t){return h.handleEdit(e.row)}),["prevent"]),type:"primary",plain:"",size:"mini"},{default:(0,n.w5)((function(){return[c]})),_:2},1032,["onClick"]),(0,n.wy)((0,n.Wm)(v,{onClick:(0,i.iM)((function(t){return h.handleDelete(e.row)}),["prevent"]),type:"danger",plain:"",size:"mini"},{default:(0,n.w5)((function(){return[d]})),_:2},1032,["onClick"]),[[_,{permission:"删除分类",type:"disabled"}]])]})),_:1})]})),_:1},8,["data"]),[[V,e.loading]]),(0,n._)("div",p,[f.refreshPagination?((0,n.wg)(),(0,n.j4)(C,{key:0,onCurrentChange:h.handleCurrentChange,background:!0,"page-size":f.pageCount,"current-page":f.currentPage,layout:"prev, pager, next, jumper",total:f.totalNums},null,8,["onCurrentChange","page-size","current-page","total"])):(0,n.kq)("",!0)]),f.dialogFormVisible?((0,n.wg)(),(0,n.iD)("div",m,[(0,n.Wm)(k,{"append-to-body":!0,"before-close":e.handleClose,visible:e.visible,modelValue:f.dialogFormVisible,"onUpdate:modelValue":t[0]||(t[0]=function(e){return f.dialogFormVisible=e})},{default:(0,n.w5)((function(){return[(0,n.Wm)(x,{isCreate:f.isCreate,dialogFormVisible:f.dialogFormVisible,categoryId:f.subCategoryId,isSub:!0,onDialogClose:h.dialogClose},null,8,["isCreate","dialogFormVisible","categoryId","onDialogClose"])]})),_:1},8,["before-close","visible","modelValue"])])):(0,n.kq)("",!0)])}var f=r(48534),h=(r(41539),r(54747),r(35666),r(63602)),v=r(42042),w={components:{CategoryEdit:v["default"]},data:function(){return{display:!0,tableData:[],superCategoryId:0,superCategoryName:0,subCategoryId:0,imgSrcList:[],totalNums:0,currentPage:1,pageCount:10,refreshPagination:!0,dialogFormVisible:!1,isCreate:!1,root:1,form:{name:"",is_root:0,parent_id:null,description:"",online:1,index:null}}},created:function(){var e=this;return(0,f.Z)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.loading=!0,e.superCategoryId=e.$route.params.id,e.superCategoryName=e.$route.query.categoryName,e.getSubCategories(),e.loading=!1;case 5:case"end":return t.stop()}}),t)})))()},filters:{onlineFormat:function(e){return 1===e?"显示":"不显示"}},watch:{display:function(e){this.form.online=e?1:0}},methods:{getSubCategories:function(){var e=this;return(0,f.Z)(regeneratorRuntime.mark((function t(){var r,n,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return r=e.currentPage-1,n=e.pageCount,t.next=4,h["default"].getSubCategories(r,n,e.superCategoryId);case 4:a=t.sent,e.tableData=a.items,e.totalNums=a.total,e.initImgSrcList();case 8:case"end":return t.stop()}}),t)})))()},handleCurrentChange:function(e){var t=this;return(0,f.Z)(regeneratorRuntime.mark((function r(){return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:t.imgSrcList=[],t.currentPage=e,t.loading=!0,t.getSubCategories(),t.loading=!1;case 5:case"end":return r.stop()}}),r)})))()},initImgSrcList:function(){var e=this;this.tableData.forEach((function(t){t.img&&e.imgSrcList.push(t.img)}))},handleAdd:function(){this.dialogFormVisible=!0,this.isCreate=!0},handleEdit:function(e){this.subCategoryId=e.id,this.isCreate=!1,this.dialogFormVisible=!0},handleDelete:function(e){var t,r=this;this.$confirm("此操作将永久删除该分类，是否继续？","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((0,f.Z)(regeneratorRuntime.mark((function n(){return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return n.prev=0,r.loading=!0,n.next=4,h["default"].deleteCategory(e.id);case 4:t=n.sent,n.next=10;break;case 7:n.prev=7,n.t0=n["catch"](0),r.loading=!1;case 10:t.code<window.MAX_SUCCESS_CODE?(r.loading=!1,r.totalNums%r.pageCount===1&&1!==r.currentPage&&r.currentPage--,r.getSubCategories(),r.$message({type:"success",message:"".concat(t.message)})):(r.loading=!1,r.$message.error("".concat(t.message)));case 11:case"end":return n.stop()}}),n,null,[[0,7]])}))))},dialogClose:function(){this.dialogFormVisible=!1,this.loading=!0,this.getSubCategories(),this.loading=!1}}},y=r(83744);const b=(0,y.Z)(w,[["render",g],["__scopeId","data-v-ee4690ae"]]);var C=b}}]);
//# sourceMappingURL=4048.c716e8cf.js.map