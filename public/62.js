(window.webpackJsonp=window.webpackJsonp||[]).push([[62],{82:function(t,e,o){"use strict";o.r(e);var r,a,s,l=(s=function(){var t=this;axios.get("/api/olimp/").then((function(e){var o=e.data;return t.olimps=o}))},(a="created")in(r={created:function(){User.loggedIn()||this.$router.push({name:"/tdeiadmin"})},data:function(){return{form:{talyp_at_tm:null,talyp_at_ru:null,talyp_at_en:null,ders_tm:null,ders_ru:null,ders_en:null,orun_tm:null,orun_ru:null,orun_en:null,olimp_id:null,photo:null},errors:{},olimps:{}}},methods:{onFileSelected:function(t){var e=this,o=t.target.files[0];if(o.size>2048770)Notification.image_validation();else{var r=new FileReader;r.onload=function(t){e.form.photo=t.target.result,console.log(t.target.result)},r.readAsDataURL(o)}},ustunInsert:function(t){var e=this;t.preventDefault(),axios.post("/api/ustun",this.form).then((function(){e.$router.push({name:"ustun"}),Notification.success()})).catch((function(t){return e.errors=t.response.data.errors}))}}})?Object.defineProperty(r,a,{value:s,enumerable:!0,configurable:!0,writable:!0}):r[a]=s,r),i=o(0),n=Object(i.a)(l,(function(){var t=this,e=t.$createElement,o=t._self._c||e;return o("div",[o("div",{staticClass:"row"},[o("router-link",{staticClass:"btn btn-primary",attrs:{to:"/tdeiadmin/ustun"}},[t._v("Ahli Ustunlik ")])],1),t._v(" "),o("div",{staticClass:"row justify-content-center"},[o("div",{staticClass:"col-xl-12 col-lg-12 col-md-12"},[o("div",{staticClass:"card shadow-sm my-5"},[o("div",{staticClass:"card-body p-0"},[o("div",{staticClass:"row"},[o("div",{staticClass:"col-lg-12"},[o("div",{staticClass:"login-form"},[t._m(0),t._v(" "),o("form",{attrs:{enctype:"multipart/form-data"},on:{submit:t.ustunInsert}},[o("div",{staticClass:"form-group"},[o("div",{staticClass:"form-row"},[o("div",{staticClass:"col-md-6"},[o("label",[t._v("Olimplar")]),t._v(" "),o("select",{directives:[{name:"model",rawName:"v-model",value:t.form.olimp_id,expression:"form.olimp_id"}],staticClass:"form-control",on:{change:function(e){var o=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"olimp_id",e.target.multiple?o:o[0])}}},t._l(t.olimps,(function(e){return o("option",{domProps:{value:e.id}},[t._v(t._s(e.olimp_at_tm))])})),0)])])]),t._v(" "),o("div",{staticClass:"form-group"},[o("div",{staticClass:"form-row"},[o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.talyp_at_tm,expression:"form.talyp_at_tm"}],staticClass:"form-control",attrs:{type:"text",placeholder:"talyp_at_tm"},domProps:{value:t.form.talyp_at_tm},on:{input:function(e){e.target.composing||t.$set(t.form,"talyp_at_tm",e.target.value)}}})]),t._v(" "),o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.talyp_at_ru,expression:"form.talyp_at_ru"}],staticClass:"form-control",attrs:{type:"text",placeholder:"talyp_at_ru"},domProps:{value:t.form.talyp_at_ru},on:{input:function(e){e.target.composing||t.$set(t.form,"talyp_at_ru",e.target.value)}}})]),t._v(" "),o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.talyp_at_en,expression:"form.talyp_at_en"}],staticClass:"form-control",attrs:{type:"text",placeholder:"talyp_at_en"},domProps:{value:t.form.talyp_at_en},on:{input:function(e){e.target.composing||t.$set(t.form,"talyp_at_en",e.target.value)}}})])])]),t._v(" "),o("div",{staticClass:"form-group"},[o("div",{staticClass:"form-row"},[o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.ders_tm,expression:"form.ders_tm"}],staticClass:"form-control",attrs:{type:"text",placeholder:"ders_tm"},domProps:{value:t.form.ders_tm},on:{input:function(e){e.target.composing||t.$set(t.form,"ders_tm",e.target.value)}}})]),t._v(" "),o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.ders_ru,expression:"form.ders_ru"}],staticClass:"form-control",attrs:{type:"text",placeholder:"ders_ru"},domProps:{value:t.form.ders_ru},on:{input:function(e){e.target.composing||t.$set(t.form,"ders_ru",e.target.value)}}})]),t._v(" "),o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.ders_en,expression:"form.ders_en"}],staticClass:"form-control",attrs:{type:"text",placeholder:"ders_en"},domProps:{value:t.form.ders_en},on:{input:function(e){e.target.composing||t.$set(t.form,"ders_en",e.target.value)}}})])])]),t._v(" "),o("div",{staticClass:"form-group"},[o("div",{staticClass:"form-row"},[o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.orun_tm,expression:"form.orun_tm"}],staticClass:"form-control",attrs:{type:"text",placeholder:"orun_tm"},domProps:{value:t.form.orun_tm},on:{input:function(e){e.target.composing||t.$set(t.form,"orun_tm",e.target.value)}}})]),t._v(" "),o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.orun_ru,expression:"form.orun_ru"}],staticClass:"form-control",attrs:{type:"text",placeholder:"orun_ru"},domProps:{value:t.form.orun_ru},on:{input:function(e){e.target.composing||t.$set(t.form,"orun_ru",e.target.value)}}})]),t._v(" "),o("div",{staticClass:"col-md-4"},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.orun_en,expression:"form.orun_en"}],staticClass:"form-control",attrs:{type:"text",placeholder:"orun_en"},domProps:{value:t.form.orun_en},on:{input:function(e){e.target.composing||t.$set(t.form,"orun_en",e.target.value)}}})])])]),t._v(" "),o("div",{staticClass:"form-group"},[o("div",{staticClass:"form-row"},[o("div",{staticClass:"col-md-6"},[o("input",{staticClass:"custom-file-input",attrs:{type:"file",id:"customFile"},on:{change:t.onFileSelected}}),t._v(" "),t.errors.photo?o("small",{staticClass:"text-danger"},[t._v(" "+t._s(t.errors.photo[0])+" ")]):t._e(),t._v(" "),o("label",{staticClass:"custom-file-label",attrs:{for:"customFile"}},[t._v("Choose file")])]),t._v(" "),o("div",{staticClass:"col-md-6"},[o("img",{staticStyle:{height:"40px",width:"40px"},attrs:{src:t.form.photo}})])])]),t._v(" "),o("br"),t._v(" "),o("button",{staticClass:"btn btn-primary btn-block",attrs:{type:"submit"}},[t._v("Submit")])]),t._v(" "),o("hr"),t._v(" "),o("div",{staticClass:"text-center"}),t._v(" "),o("div",{staticClass:"text-center"})])])])])])])])])}),[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"text-center"},[e("h1",{staticClass:"h4 text-gray-900 mb-4"},[this._v("Ustunlik gosmak")])])}],!1,null,null,null);e.default=n.exports}}]);