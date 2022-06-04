"use strict";(self["webpackChunklin_cms_vue"]=self["webpackChunklin_cms_vue"]||[]).push([[2887,1301],{41301:function(e,r,n){n.r(r),n.d(r,{default:function(){return s}});var t=n(48534),u=n(13087),a=n(62833),i=(n(35666),n(12109)),s=function(){function e(){var r=arguments.length>0&&void 0!==arguments[0]?arguments[0]:0,n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:10,t=arguments.length>2&&void 0!==arguments[2]?arguments[2]:0,a=arguments.length>3&&void 0!==arguments[3]?arguments[3]:5;(0,u.Z)(this,e),this.uPage=r,this.uCount=n,this.lPage=t,this.gCount=a}return(0,a.Z)(e,[{key:"increaseUPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:this.uPage+=1;case 1:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"increaseGPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:this.lPage+=1;case 1:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"decreaseUPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:this.uPage-=1,this.uPage<0&&(this.uPage=0);case 2:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"decreaseGPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:this.lPage-=1,this.lPage<0&&(this.lPage=0);case 2:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"nextUsersPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,this.increaseUPage();case 2:return e.abrupt("return",this.getAdminUsers({}));case 3:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"preUsersPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,this.decreaseUPage();case 2:return e.abrupt("return",this.getAdminUsers({}));case 3:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"getGroupsWithPermissions",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n,t,u,a,s;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n=r.count,t=void 0===n?this.uCount:n,u=r.page,a=void 0===u?this.uPage:u,e.next=3,(0,i.get)("cms/admin/groups",{count:t,page:a});case 3:return s=e.sent,e.abrupt("return",s);case 5:case"end":return e.stop()}}),e,this)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"nextGroupsPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,this.increaseGPage();case 2:return e.abrupt("return",this.getGroupsWithPermissions({}));case 3:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"preGroupsPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,this.decreaseGPage();case 2:return e.abrupt("return",this.getGroupsWithPermissions({}));case 3:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()}],[{key:"getAllPermissions",value:function(){return(0,i.get)("cms/admin/permission")}},{key:"getAdminUsers",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n,t,u,a,s,c;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(n=r.groupId,t=r.count,u=void 0===t?this.uCount:t,a=r.page,s=void 0===a?this.uPage:a,!n){e.next=7;break}return e.next=4,(0,i.get)("cms/admin/users",{count:u,page:s,group_id:n});case 4:c=e.sent,e.next=10;break;case 7:return e.next=9,(0,i.get)("cms/admin/users",{count:u,page:s});case 9:c=e.sent;case 10:return e.abrupt("return",c);case 11:case"end":return e.stop()}}),e,this)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"getAllGroups",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("cms/admin/group/all");case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function r(){return e.apply(this,arguments)}return r}()},{key:"getOneGroup",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("cms/admin/group/".concat(r));case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"createOneGroup",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n,t){var u;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("cms/admin/group",{name:r,info:n,permission_ids:t});case 2:return u=e.sent,e.abrupt("return",u);case 4:case"end":return e.stop()}}),e)})));function r(r,n,t){return e.apply(this,arguments)}return r}()},{key:"updateOneGroup",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n,t){var u;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("cms/admin/group/".concat(t),{name:r,info:n});case 2:return u=e.sent,e.abrupt("return",u);case 4:case"end":return e.stop()}}),e)})));function r(r,n,t){return e.apply(this,arguments)}return r}()},{key:"deleteOneGroup",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i._delete)("cms/admin/group/".concat(r));case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"deleteOneUser",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i._delete)("cms/admin/user/".concat(r));case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"updateOneUser",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n,t){var u;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("cms/admin/user/".concat(t),{email:r,group_ids:n});case 2:return u=e.sent,e.abrupt("return",u);case 4:case"end":return e.stop()}}),e)})));function r(r,n,t){return e.apply(this,arguments)}return r}()},{key:"dispatchPermissions",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("cms/admin/permission/dispatch/batch",{group_id:r,permission_ids:n});case 2:return t=e.sent,e.abrupt("return",t);case 4:case"end":return e.stop()}}),e)})));function r(r,n){return e.apply(this,arguments)}return r}()},{key:"changePassword",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n,t){var u;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("cms/admin/user/".concat(t,"/password"),{new_password:r,confirm_password:n});case 2:return u=e.sent,e.abrupt("return",u);case 4:case"end":return e.stop()}}),e)})));function r(r,n,t){return e.apply(this,arguments)}return r}()},{key:"removePermissions",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("cms/admin/permission/remove",{group_id:r,permission_ids:n});case 2:return t=e.sent,e.abrupt("return",t);case 4:case"end":return e.stop()}}),e)})));function r(r,n){return e.apply(this,arguments)}return r}()}]),e}()},22887:function(e,r,n){n.r(r),n.d(r,{useEditGroup:function(){return m},useGroupList:function(){return p}});var t=n(95082),u=n(48534),a=(n(68309),n(35666),n(62931)),i=n(66252),s=n(59418),c=n(20610),o=n(41301),p=function(){var e=(0,a.iH)([]),r=(0,a.iH)(!1),n=function(){var n=(0,u.Z)(regeneratorRuntime.mark((function n(){return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return n.prev=0,r.value=!0,n.next=4,o["default"].getAllGroups();case 4:e.value=n.sent,r.value=!1,n.next=12;break;case 8:n.prev=8,n.t0=n["catch"](0),r.value=!1,console.error(n.t0);case 12:case"end":return n.stop()}}),n,null,[[0,8]])})));return function(){return n.apply(this,arguments)}}(),t=function(e){var t={};s.T.confirm("此操作将永久删除该分组, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((0,u.Z)(regeneratorRuntime.mark((function u(){return regeneratorRuntime.wrap((function(u){while(1)switch(u.prev=u.next){case 0:return u.prev=0,r.value=!0,u.next=4,o["default"].deleteOneGroup(e);case 4:t=u.sent,u.next=11;break;case 7:u.prev=7,u.t0=u["catch"](0),r.value=!1,console.log(u.t0);case 11:if(!(t.code<window.MAX_SUCCESS_CODE)){u.next=17;break}return u.next=14,n();case 14:c.z8.message({type:"success",message:"".concat(t.message)}),u.next=19;break;case 17:r.value=!1,c.z8.message({type:"error",message:"".concat(t.message)});case 19:case"end":return u.stop()}}),u,null,[[0,7]])}))))};return(0,i.bv)((0,u.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,n();case 2:case"end":return e.stop()}}),e)})))),{loading:r,tableData:e,handleDelete:t,getAllGroups:n}},m=function(e,r){var n={},i=(0,a.iH)(0),s=(0,a.iH)(null),p=(0,a.qj)({name:"",info:""}),m=(0,a.iH)(!1),l={info:[],name:[{required:!0,message:"请输入分组名称",trigger:"blur"}]},f=function(e){i.value=e.id,p.name=e.name,p.info=e.info,n=(0,t.Z)({},p),m.value=!0},g=function(){var e=(0,u.Z)(regeneratorRuntime.mark((function e(){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(""!==p.name){e.next=3;break}return c.z8.warning("请将信息填写完整"),e.abrupt("return");case 3:if(n.name===p.name&&n.info===p.info){e.next=8;break}return e.next=6,o["default"].updateOneGroup(p.name,p.info,i.value);case 6:t=e.sent,t.code<window.MAX_SUCCESS_CODE&&(c.z8.success("".concat(t.message)),r());case 8:m.value=!1;case 9:case"end":return e.stop()}}),e)})));return function(){return e.apply(this,arguments)}}(),h=function(e){e()},v=function(e){f(e)},d=function(){s.value.resetFields()};return{id:i,form:s,rules:l,group:p,resetForm:d,handleEdit:f,confirmEdit:g,handleClose:h,rowDoubleClick:v,dialogFormVisible:m}}}}]);
//# sourceMappingURL=2887.eaedcee0.js.map