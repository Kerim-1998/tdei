(window.webpackJsonp=window.webpackJsonp||[]).push([[33],{104:function(t,e,r){"use strict";r.r(e);var a;function s(t,e,r){return e in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}var o=(s(a={created:function(){User.loggedIn()||this.$router.push({name:"/tdeiadmin"})},data:function(){return{form:{ders_at_tm:"",ders_at_ru:"",ders_at_en:"",mug_at_tm:"",mug_at_ru:"",mug_at_en:""},errors:{}}}},"created",(function(){var t=this,e=this.$route.params.id;axios.get("/api/eders/"+e).then((function(e){var r=e.data;return t.form=r})).catch(console.log("error"))})),s(a,"methods",{EdersUpdate:function(){var t=this,e=this.$route.params.id;axios.patch("/api/eders/"+e,this.form).then((function(){t.$router.push({name:"eders"}),Notification.success()})).catch((function(e){return t.errors=e.response.data.errors}))}}),a),i=r(0),n=Object(i.a)(o,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("div",{staticClass:"row"},[r("router-link",{staticClass:"btn btn-primary",attrs:{to:"/eders"}},[t._v("Ahli eders ")])],1),t._v(" "),r("div",{staticClass:"row justify-content-center"},[r("div",{staticClass:"col-xl-12 col-lg-12 col-md-12"},[r("div",{staticClass:"card shadow-sm my-5"},[r("div",{staticClass:"card-body p-0"},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-12"},[r("div",{staticClass:"login-form"},[t._m(0),t._v(" "),r("form",{staticClass:"user",on:{submit:function(e){return e.preventDefault(),t.EdersUpdate(e)}}},[r("div",{staticClass:"form-group"},[r("div",{staticClass:"form-row"},[r("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.ders_at_tm,expression:"form.ders_at_tm"}],staticClass:"form-control",domProps:{value:t.form.ders_at_tm},on:{input:function(e){e.target.composing||t.$set(t.form,"ders_at_tm",e.target.value)}}})]),t._v(" "),r("br"),t._v(" "),r("div",{staticClass:"form-row"},[r("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.ders_at_ru,expression:"form.ders_at_ru"}],staticClass:"form-control",domProps:{value:t.form.ders_at_ru},on:{input:function(e){e.target.composing||t.$set(t.form,"ders_at_ru",e.target.value)}}})]),t._v(" "),r("br"),t._v(" "),r("div",{staticClass:"form-row"},[r("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.ders_at_en,expression:"form.ders_at_en"}],staticClass:"form-control",domProps:{value:t.form.ders_at_en},on:{input:function(e){e.target.composing||t.$set(t.form,"ders_at_en",e.target.value)}}})]),t._v(" "),r("br")]),t._v(" "),r("br"),t._v(" "),r("div",{staticClass:"form-group"},[r("div",{staticClass:"form-row"},[r("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.mug_at_tm,expression:"form.mug_at_tm"}],staticClass:"form-control",domProps:{value:t.form.mug_at_tm},on:{input:function(e){e.target.composing||t.$set(t.form,"mug_at_tm",e.target.value)}}})]),t._v(" "),r("br"),t._v(" "),r("div",{staticClass:"form-row"},[r("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.mug_at_ru,expression:"form.mug_at_ru"}],staticClass:"form-control",domProps:{value:t.form.mug_at_ru},on:{input:function(e){e.target.composing||t.$set(t.form,"mug_at_ru",e.target.value)}}})]),t._v(" "),r("br"),t._v(" "),r("div",{staticClass:"form-row"},[r("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.mug_at_en,expression:"form.mug_at_en"}],staticClass:"form-control",domProps:{value:t.form.mug_at_en},on:{input:function(e){e.target.composing||t.$set(t.form,"mug_at_en",e.target.value)}}})]),t._v(" "),r("br")]),t._v(" "),r("br"),t._v(" "),t._m(1)]),t._v(" "),r("hr"),t._v(" "),r("div",{staticClass:"text-center"}),t._v(" "),r("div",{staticClass:"text-center"})])])])])])])])])}),[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"text-center"},[e("h1",{staticClass:"h4 text-gray-900 mb-4"},[this._v(" eders Update")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"form-group"},[e("button",{staticClass:"btn btn-primary btn-block",attrs:{type:"submit"}},[this._v("Uytget")])])}],!1,null,null,null);e.default=n.exports}}]);