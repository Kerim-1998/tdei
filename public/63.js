(window.webpackJsonp=window.webpackJsonp||[]).push([[63],{84:function(t,s,a){"use strict";a.r(s);var r={created:function(){User.loggedIn()||this.$router.push({name:"/tdeiadmin"})},data:function(){return{form:{yarys_at_tm:null,yarys_at_ru:null,yarys_at_en:null},errors:{}}},methods:{yarysInsert:function(){var t=this;axios.post("/api/yarys",this.form).then((function(){t.$router.push({name:"yarys"}),Notification.success()})).catch((function(s){return t.errors=s.response.data.errors}))}}},e=a(0),o=Object(e.a)(r,(function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",[a("div",{staticClass:"row"},[a("router-link",{staticClass:"btn btn-primary",attrs:{to:"/tdeiadmin/yarys"}},[t._v("Ahli yarys ")])],1),t._v(" "),a("div",{staticClass:"row justify-content-center"},[a("div",{staticClass:"col-xl-12 col-lg-12 col-md-12"},[a("div",{staticClass:"card shadow-sm my-5"},[a("div",{staticClass:"card-body p-0"},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-lg-12"},[a("div",{staticClass:"login-form"},[t._m(0),t._v(" "),a("form",{staticClass:"user",on:{submit:function(s){return s.preventDefault(),t.yarysInsert(s)}}},[a("div",{staticClass:"form-group"},[a("div",{staticClass:"form-row"},[a("div",{staticClass:"col-md-12"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.form.yarys_at_tm,expression:"form.yarys_at_tm"}],staticClass:"form-control",attrs:{type:"text",placeholder:"yarys_at_tm"},domProps:{value:t.form.yarys_at_tm},on:{input:function(s){s.target.composing||t.$set(t.form,"yarys_at_tm",s.target.value)}}})])]),t._v(" "),a("br"),t._v(" "),a("div",{staticClass:"form-row"},[a("div",{staticClass:"col-md-12"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.form.yarys_at_ru,expression:"form.yarys_at_ru"}],staticClass:"form-control",attrs:{type:"text",placeholder:"yarys_at_ru"},domProps:{value:t.form.yarys_at_ru},on:{input:function(s){s.target.composing||t.$set(t.form,"yarys_at_ru",s.target.value)}}})])]),t._v(" "),a("br"),t._v(" "),a("div",{staticClass:"form-row"},[a("div",{staticClass:"col-md-12"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.form.yarys_at_en,expression:"form.yarys_at_en"}],staticClass:"form-control",attrs:{type:"text",placeholder:"yarys_at_en"},domProps:{value:t.form.yarys_at_en},on:{input:function(s){s.target.composing||t.$set(t.form,"yarys_at_en",s.target.value)}}})])]),t._v(" "),a("br")]),t._v(" "),a("br"),t._v(" "),t._m(1)]),t._v(" "),a("hr"),t._v(" "),a("div",{staticClass:"text-center"}),t._v(" "),a("div",{staticClass:"text-center"})])])])])])])])])}),[function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"text-center"},[s("h1",{staticClass:"h4 text-gray-900 mb-4"},[this._v("yarys Gosmak")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"form-group"},[s("button",{staticClass:"btn btn-primary btn-block",attrs:{type:"submit"}},[this._v("Submit")])])}],!1,null,null,null);s.default=o.exports}}]);