(window.webpackJsonp=window.webpackJsonp||[]).push([[59],{69:function(t,r,s){"use strict";s.r(r);var a={created:function(){User.loggedIn()||this.$router.push({name:"/tdeiadmin"})},data:function(){return{form:{ugur_at_tm:null,ugur_at_ru:null,ugur_at_en:null},errors:{}}},methods:{ugurInsert:function(){var t=this;axios.post("/api/ugur",this.form).then((function(){t.$router.push({name:"ugur"}),Notification.success()})).catch((function(r){return t.errors=r.response.data.errors}))}}},e=s(0),o=Object(e.a)(a,(function(){var t=this,r=t.$createElement,s=t._self._c||r;return s("div",[s("div",{staticClass:"row"},[s("router-link",{staticClass:"btn btn-primary",attrs:{to:"/tdeiadmin/ugur"}},[t._v("Ahli Ugur ")])],1),t._v(" "),s("div",{staticClass:"row justify-content-center"},[s("div",{staticClass:"col-xl-12 col-lg-12 col-md-12"},[s("div",{staticClass:"card shadow-sm my-5"},[s("div",{staticClass:"card-body p-0"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-12"},[s("div",{staticClass:"login-form"},[t._m(0),t._v(" "),s("form",{staticClass:"user",on:{submit:function(r){return r.preventDefault(),t.ugurInsert(r)}}},[s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-12"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.ugur_at_tm,expression:"form.ugur_at_tm"}],staticClass:"form-control",attrs:{type:"text",placeholder:"ugur_at_tm"},domProps:{value:t.form.ugur_at_tm},on:{input:function(r){r.target.composing||t.$set(t.form,"ugur_at_tm",r.target.value)}}})])]),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-12"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.ugur_at_ru,expression:"form.ugur_at_ru"}],staticClass:"form-control",attrs:{type:"text",placeholder:"ugur_at_ru"},domProps:{value:t.form.ugur_at_ru},on:{input:function(r){r.target.composing||t.$set(t.form,"ugur_at_ru",r.target.value)}}})])]),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-12"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.ugur_at_en,expression:"form.ugur_at_en"}],staticClass:"form-control",attrs:{type:"text",placeholder:"ugur_at_en"},domProps:{value:t.form.ugur_at_en},on:{input:function(r){r.target.composing||t.$set(t.form,"ugur_at_en",r.target.value)}}})])]),t._v(" "),s("br")]),t._v(" "),s("br"),t._v(" "),t._m(1)]),t._v(" "),s("hr"),t._v(" "),s("div",{staticClass:"text-center"}),t._v(" "),s("div",{staticClass:"text-center"})])])])])])])])])}),[function(){var t=this.$createElement,r=this._self._c||t;return r("div",{staticClass:"text-center"},[r("h1",{staticClass:"h4 text-gray-900 mb-4"},[this._v("Ugur Gosmak")])])},function(){var t=this.$createElement,r=this._self._c||t;return r("div",{staticClass:"form-group"},[r("button",{staticClass:"btn btn-primary btn-block",attrs:{type:"submit"}},[this._v("Submit")])])}],!1,null,null,null);r.default=o.exports}}]);