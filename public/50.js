(window.webpackJsonp=window.webpackJsonp||[]).push([[50],{85:function(t,e,i){"use strict";i.r(e);var a,s,r,n=(r=function(){this.allOlimp()},(s="created")in(a={created:function(){User.loggedIn()||this.$router.push({name:"/tdeiadmin"})},data:function(){return{olimps:[],searchTerm:""}},computed:{filtersearch:function(){var t=this;return this.olimps.filter((function(e){return e.olimp_at_tm.match(t.searchTerm)}))}},methods:{allOlimp:function(){var t=this;axios.get("/api/olimp/").then((function(e){var i=e.data;return t.olimps=i})).catch()},deleteOlimp:function(t){var e=this;Swal.fire({title:"Are you sure?",text:"You won't be able to revert this!",icon:"warning",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes, delete it!"}).then((function(i){i.value&&(axios.delete("/api/olimp/"+t).then((function(){e.olimps=e.olimps.filter((function(e){return e.id!=t}))})).catch((function(){e.$router.push({name:"olimp"})})),Swal.fire("Deleted!","Your file has been deleted.","success"))}))}}})?Object.defineProperty(a,s,{value:r,enumerable:!0,configurable:!0,writable:!0}):a[s]=r,a),l=i(0),o=Object(l.a)(n,(function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",[i("div",{staticClass:"row"},[i("router-link",{staticClass:"btn btn-primary",attrs:{to:"/tdeiadmin/store-olimp"}},[t._v("Olimp gosmak ")])],1),t._v(" "),i("br"),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.searchTerm,expression:"searchTerm"}],staticClass:"form-control",staticStyle:{width:"300px"},attrs:{type:"text",placeholder:"Gozleg"},domProps:{value:t.searchTerm},on:{input:function(e){e.target.composing||(t.searchTerm=e.target.value)}}}),t._v(" "),i("br"),t._v(" "),i("div",{staticClass:"row"},[i("div",{staticClass:"col-lg-12 mb-4"},[i("div",{staticClass:"card"},[t._m(0),t._v(" "),i("div",{staticClass:"table-responsive"},[i("table",{staticClass:"table align-items-center table-flush"},[t._m(1),t._v(" "),i("tbody",t._l(t.filtersearch,(function(e){return i("tr",{key:e.id},[i("td",[t._v(t._s(e.olimp_at_tm))]),t._v(" "),i("td",[t._v(t._s(e.olimp_at_ru))]),t._v(" "),i("td",[t._v(t._s(e.olimp_at_en))]),t._v(" "),i("td",[i("router-link",{staticClass:"btn btn-sm btn-primary",attrs:{to:{name:"edit-olimp",params:{id:e.id}}}},[t._v("Uytget")]),t._v(" "),i("a",{staticClass:"btn btn-sm btn-danger",on:{click:function(i){return t.deleteOlimp(e.id)}}},[i("font",{attrs:{color:"#ffffff"}},[t._v("Poz")])],1)],1)])})),0)])]),t._v(" "),i("div",{staticClass:"card-footer"})])])])])}),[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"card-header py-3 d-flex flex-row align-items-center justify-content-between"},[e("h6",{staticClass:"m-0 font-weight-bold text-primary"},[this._v("Olimp List")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("thead",{staticClass:"thead-light"},[e("tr",[e("th",[this._v("olimp_at_tm")]),this._v(" "),e("th",[this._v("olimp_at_ru")]),this._v(" "),e("th",[this._v("olimp_at_en")]),this._v(" "),e("th",[this._v("Action")])])])}],!1,null,null,null);e.default=o.exports}}]);