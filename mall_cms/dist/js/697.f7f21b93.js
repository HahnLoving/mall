"use strict";(self["webpackChunklin_cms_vue"]=self["webpackChunklin_cms_vue"]||[]).push([[697,1301],{41301:function(e,r,n){n.r(r),n.d(r,{default:function(){return s}});var t=n(48534),u=n(13087),a=n(62833),i=(n(35666),n(12109)),s=function(){function e(){var r=arguments.length>0&&void 0!==arguments[0]?arguments[0]:0,n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:10,t=arguments.length>2&&void 0!==arguments[2]?arguments[2]:0,a=arguments.length>3&&void 0!==arguments[3]?arguments[3]:5;(0,u.Z)(this,e),this.uPage=r,this.uCount=n,this.lPage=t,this.gCount=a}return(0,a.Z)(e,[{key:"increaseUPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:this.uPage+=1;case 1:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"increaseGPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:this.lPage+=1;case 1:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"decreaseUPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:this.uPage-=1,this.uPage<0&&(this.uPage=0);case 2:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"decreaseGPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:this.lPage-=1,this.lPage<0&&(this.lPage=0);case 2:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"nextUsersPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,this.increaseUPage();case 2:return e.abrupt("return",this.getAdminUsers({}));case 3:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"preUsersPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,this.decreaseUPage();case 2:return e.abrupt("return",this.getAdminUsers({}));case 3:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"getGroupsWithPermissions",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n,t,u,a,s;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n=r.count,t=void 0===n?this.uCount:n,u=r.page,a=void 0===u?this.uPage:u,e.next=3,(0,i.get)("cms/admin/groups",{count:t,page:a});case 3:return s=e.sent,e.abrupt("return",s);case 5:case"end":return e.stop()}}),e,this)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"nextGroupsPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,this.increaseGPage();case 2:return e.abrupt("return",this.getGroupsWithPermissions({}));case 3:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()},{key:"preGroupsPage",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,this.decreaseGPage();case 2:return e.abrupt("return",this.getGroupsWithPermissions({}));case 3:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()}],[{key:"getAllPermissions",value:function(){return(0,i.get)("cms/admin/permission")}},{key:"getAdminUsers",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n,t,u,a,s,c;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(n=r.groupId,t=r.count,u=void 0===t?this.uCount:t,a=r.page,s=void 0===a?this.uPage:a,!n){e.next=7;break}return e.next=4,(0,i.get)("cms/admin/users",{count:u,page:s,group_id:n});case 4:c=e.sent,e.next=10;break;case 7:return e.next=9,(0,i.get)("cms/admin/users",{count:u,page:s});case 9:c=e.sent;case 10:return e.abrupt("return",c);case 11:case"end":return e.stop()}}),e,this)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"getAllGroups",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("cms/admin/group/all");case 2:return r=e.sent,e.abrupt("return",r);case 4:case"end":return e.stop()}}),e)})));function r(){return e.apply(this,arguments)}return r}()},{key:"getOneGroup",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.get)("cms/admin/group/".concat(r));case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"createOneGroup",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n,t){var u;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("cms/admin/group",{name:r,info:n,permission_ids:t});case 2:return u=e.sent,e.abrupt("return",u);case 4:case"end":return e.stop()}}),e)})));function r(r,n,t){return e.apply(this,arguments)}return r}()},{key:"updateOneGroup",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n,t){var u;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("cms/admin/group/".concat(t),{name:r,info:n});case 2:return u=e.sent,e.abrupt("return",u);case 4:case"end":return e.stop()}}),e)})));function r(r,n,t){return e.apply(this,arguments)}return r}()},{key:"deleteOneGroup",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i._delete)("cms/admin/group/".concat(r));case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"deleteOneUser",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i._delete)("cms/admin/user/".concat(r));case 2:return n=e.sent,e.abrupt("return",n);case 4:case"end":return e.stop()}}),e)})));function r(r){return e.apply(this,arguments)}return r}()},{key:"updateOneUser",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n,t){var u;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("cms/admin/user/".concat(t),{email:r,group_ids:n});case 2:return u=e.sent,e.abrupt("return",u);case 4:case"end":return e.stop()}}),e)})));function r(r,n,t){return e.apply(this,arguments)}return r}()},{key:"dispatchPermissions",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("cms/admin/permission/dispatch/batch",{group_id:r,permission_ids:n});case 2:return t=e.sent,e.abrupt("return",t);case 4:case"end":return e.stop()}}),e)})));function r(r,n){return e.apply(this,arguments)}return r}()},{key:"changePassword",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n,t){var u;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.put)("cms/admin/user/".concat(t,"/password"),{new_password:r,confirm_password:n});case 2:return u=e.sent,e.abrupt("return",u);case 4:case"end":return e.stop()}}),e)})));function r(r,n,t){return e.apply(this,arguments)}return r}()},{key:"removePermissions",value:function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r,n){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,(0,i.post)("cms/admin/permission/remove",{group_id:r,permission_ids:n});case 2:return t=e.sent,e.abrupt("return",t);case 4:case"end":return e.stop()}}),e)})));function r(r,n){return e.apply(this,arguments)}return r}()}]),e}()},90697:function(e,r,n){n.r(r),n.d(r,{useFormData:function(){return c},useUserList:function(){return s}});var t=n(48534),u=(n(41539),n(54747),n(69600),n(21249),n(68309),n(35666),n(62931)),a=n(66252),i=n(41301),s=function(){var e=(0,u.iH)([]),r=(0,u.iH)(10),n=(0,u.iH)([]),s=(0,u.iH)(null),c=(0,u.iH)(!1),o=(0,u.iH)(0),p=(0,u.iH)(1),l=function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t={},e.prev=1,c.value=!0,e.next=5,i["default"].getAdminUsers({groupId:s.value,count:r.value,page:p.value-1});case 5:t=e.sent,c.value=!1,n.value=h(t.items),o.value=t.total,e.next=15;break;case 11:e.prev=11,e.t0=e["catch"](1),c.value=!1,console.error(e.t0);case 15:case"end":return e.stop()}}),e,null,[[1,11]])})));return function(){return e.apply(this,arguments)}}(),m=function(){var r=(0,t.Z)(regeneratorRuntime.mark((function r(){return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return r.prev=0,c.value=!0,r.next=4,i["default"].getAllGroups();case 4:e.value=r.sent,c.value=!1,r.next=12;break;case 8:r.prev=8,r.t0=r["catch"](0),c.value=!1,console.error(r.t0);case 12:case"end":return r.stop()}}),r,null,[[0,8]])})));return function(){return r.apply(this,arguments)}}(),h=function(e){var r=[];return e.forEach((function(e){e.groupNames=e.groups.map((function(e){return e.name})).join("，"),r.push(e)})),r};return(0,a.bv)((0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,l();case 2:m();case 3:case"end":return e.stop()}}),e)})))),{groupId:s,loading:c,totalNum:o,allGroups:e,pageCount:r,tableData:n,currentPage:p,getAdminUsers:l}},c=function(e,r,n,a,i,s,c){var o=(0,u.iH)(null),p=(0,u.iH)("修改信息"),l=function(e){r.value=!1,!0===e&&n()},m=function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return a.value=1,i.value=!0,e.next=4,n();case 4:i.value=!1;case 5:case"end":return e.stop()}}),e)})));return function(){return e.apply(this,arguments)}}(),h=function(e){!0===e&&(r.value=!1)},v=function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(r){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return a.value=r,e.next=3,n();case 3:case"end":return e.stop()}}),e)})));return function(r){return e.apply(this,arguments)}}(),f=function(){var e=(0,t.Z)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if("修改信息"!==p.value){e.next=5;break}return e.next=3,s.value.submitForm();case 3:e.next=7;break;case 5:return e.next=7,c.value.submitForm();case 7:case"end":return e.stop()}}),e)})));return function(){return e.apply(this,arguments)}}(),g=function(e){r.value=!1,c.value.resetForm(),p.value="修改信息",e()},d=function(e){p.value=e.props.name},w=function(){"修改信息"===p.value?s.value.resetForm():c.value.resetForm()};return{id:o,activeTab:p,resetForm:w,confirmEdit:f,handleClose:g,handleClick:d,handleChange:m,handleInfoResult:l,handleCurrentChange:v,handlePasswordResult:h}}}}]);
//# sourceMappingURL=697.f7f21b93.js.map