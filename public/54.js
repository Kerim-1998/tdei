(window.webpackJsonp=window.webpackJsonp||[]).push([[54],{57:function(t,e,s){"use strict";s.r(e);var a={created:function(){User.loggedIn()||this.$router.push({name:"/tdeiadmin"})},data:function(){return{form:{gun:null,ay:null,yyl:null,tema_tm:null,tema_ru:null,tema_en:null,dusundiris_tm:null,tazelik_tm:null,dusundiris_ru:null,tazelik_ru:null,dusundiris_en:null,tazelik_en:null,photo:null},errors:{}}},methods:{onFileSelected:function(t){var e=this,s=t.target.files[0];if(s.size>2048770)Notification.image_validation();else{var a=new FileReader;a.onload=function(t){e.form.photo=t.target.result,console.log(t.target.result)},a.readAsDataURL(s)}},tazelikInsert:function(){var t=this;axios.post("/api/tazelik",this.form).then((function(){t.$router.push({name:"tazelik"}),Notification.success()})).catch((function(e){return t.errors=e.response.data.errors}))}}},o=s(0),r=Object(o.a)(a,(function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("div",{staticClass:"row"},[s("router-link",{staticClass:"btn btn-primary",attrs:{to:"/tdeiadmin/tazelik"}},[t._v("Ahli Tazelik ")])],1),t._v(" "),s("div",{staticClass:"row justify-content-center"},[s("div",{staticClass:"col-xl-12 col-lg-12 col-md-12"},[s("div",{staticClass:"card shadow-sm my-5"},[s("div",{staticClass:"card-body p-0"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-12"},[s("div",{staticClass:"login-form"},[t._m(0),t._v(" "),s("form",{staticClass:"user",attrs:{enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.tazelikInsert(e)}}},[s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-4"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.gun,expression:"form.gun"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Gun"},domProps:{value:t.form.gun},on:{input:function(e){e.target.composing||t.$set(t.form,"gun",e.target.value)}}})]),t._v(" "),s("div",{staticClass:"col-md-4"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.ay,expression:"form.ay"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Ay"},domProps:{value:t.form.ay},on:{input:function(e){e.target.composing||t.$set(t.form,"ay",e.target.value)}}})]),t._v(" "),s("div",{staticClass:"col-md-4"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.yyl,expression:"form.yyl"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Yyl"},domProps:{value:t.form.yyl},on:{input:function(e){e.target.composing||t.$set(t.form,"yyl",e.target.value)}}})])])]),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-6"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.tema_tm,expression:"form.tema_tm"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Tema_TM"},domProps:{value:t.form.tema_tm},on:{input:function(e){e.target.composing||t.$set(t.form,"tema_tm",e.target.value)}}})]),t._v(" "),s("div",{staticClass:"col-md-6"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.dusundiris_tm,expression:"form.dusundiris_tm"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Dusundiris_TM"},domProps:{value:t.form.dusundiris_tm},on:{input:function(e){e.target.composing||t.$set(t.form,"dusundiris_tm",e.target.value)}}})])])]),t._v(" "),s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-12"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.tazelik_tm,expression:"form.tazelik_tm"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Tazelik_TM"},domProps:{value:t.form.tazelik_tm},on:{input:function(e){e.target.composing||t.$set(t.form,"tazelik_tm",e.target.value)}}})])])]),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-6"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.tema_ru,expression:"form.tema_ru"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Tema_RU"},domProps:{value:t.form.tema_ru},on:{input:function(e){e.target.composing||t.$set(t.form,"tema_ru",e.target.value)}}})]),t._v(" "),s("div",{staticClass:"col-md-6"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.dusundiris_ru,expression:"form.dusundiris_ru"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Dusundiris_RU"},domProps:{value:t.form.dusundiris_ru},on:{input:function(e){e.target.composing||t.$set(t.form,"dusundiris_ru",e.target.value)}}})])])]),t._v(" "),s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-12"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.tazelik_ru,expression:"form.tazelik_ru"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Tazelik_RU"},domProps:{value:t.form.tazelik_ru},on:{input:function(e){e.target.composing||t.$set(t.form,"tazelik_ru",e.target.value)}}})])])]),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-6"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.tema_en,expression:"form.tema_en"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Tema_EN"},domProps:{value:t.form.tema_en},on:{input:function(e){e.target.composing||t.$set(t.form,"tema_en",e.target.value)}}})]),t._v(" "),s("div",{staticClass:"col-md-6"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.dusundiris_en,expression:"form.dusundiris_en"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Dusundiris_EN"},domProps:{value:t.form.dusundiris_en},on:{input:function(e){e.target.composing||t.$set(t.form,"dusundiris_en",e.target.value)}}})])])]),t._v(" "),s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-12"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.tazelik_en,expression:"form.tazelik_en"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Tazelik_EN"},domProps:{value:t.form.tazelik_en},on:{input:function(e){e.target.composing||t.$set(t.form,"tazelik_en",e.target.value)}}})])])]),t._v(" "),s("div",{staticClass:"form-group"},[s("div",{staticClass:"form-row"},[s("div",{staticClass:"col-md-6"},[s("input",{staticClass:"custom-file-input",attrs:{type:"file",id:"customFile"},on:{change:t.onFileSelected}}),t._v(" "),t.errors.photo?s("small",{staticClass:"text-danger"},[t._v(" "+t._s(t.errors.photo[0])+" ")]):t._e(),t._v(" "),s("label",{staticClass:"custom-file-label",attrs:{for:"customFile"}},[t._v("Choose file")])]),t._v(" "),s("div",{staticClass:"col-md-6"},[s("img",{staticStyle:{height:"40px",width:"40px"},attrs:{src:t.form.photo}})])])]),t._v(" "),t._m(1)]),t._v(" "),s("hr"),t._v(" "),s("div",{staticClass:"text-center"}),t._v(" "),s("div",{staticClass:"text-center"})])])])])])])])])}),[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"text-center"},[e("h1",{staticClass:"h4 text-gray-900 mb-4"},[this._v("Tazelik gosmak")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"form-group"},[e("button",{staticClass:"btn btn-primary btn-block",attrs:{type:"submit"}},[this._v("Submit")])])}],!1,null,null,null);e.default=r.exports}}]);