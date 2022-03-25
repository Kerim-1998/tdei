(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[9],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/carouselsmall.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/front/carouselsmall.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vuex__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vuex */ "./node_modules/vuex/dist/vuex.esm.js");
function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/* harmony default export */ __webpack_exports__["default"] = ({
  props: {
    carouselsmall_tm: String,
    carouselsmall_ru: String,
    carouselsmall_en: String
  },
  computed: _objectSpread({}, Object(vuex__WEBPACK_IMPORTED_MODULE_0__["mapGetters"])(["itemsInBasket"]), {}, Object(vuex__WEBPACK_IMPORTED_MODULE_0__["mapState"])({
    basket: function basket(state) {
      return state.basket.items;
    },
    lang: function lang(state) {
      return state.lang.items[0].lang;
    }
  }))
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/tazeliksingle.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/front/tazeliksingle.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _carouselsmall__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./carouselsmall */ "./resources/js/components/front/carouselsmall.vue");
/* harmony import */ var vuex__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! vuex */ "./node_modules/vuex/dist/vuex.esm.js");
function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//


/* harmony default export */ __webpack_exports__["default"] = ({
  components: {
    carouselsmall: _carouselsmall__WEBPACK_IMPORTED_MODULE_0__["default"]
  },
  data: function data() {
    return {
      carouselsmall: {
        carouselsmall_tm: 'TÄZELIK',
        carouselsmall_ru: 'НОВОСТ',
        carouselsmall_en: 'NEW'
      },
      tazelikfront: '',
      loading: false
    };
  },
  computed: _objectSpread({}, Object(vuex__WEBPACK_IMPORTED_MODULE_1__["mapGetters"])(["itemsInBasket"]), {}, Object(vuex__WEBPACK_IMPORTED_MODULE_1__["mapState"])({
    basket: function basket(state) {
      return state.basket.items;
    },
    lang: function lang(state) {
      return state.lang.items[0].lang;
    }
  })),
  created: function created() {
    var _this = this;

    this.loading = true;
    axios.get('/api/tazelikfront/' + this.$route.params.id).then(function (response) {
      _this.tazelikfront = response.data.data;
      _this.loading = false;
    });
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/carouselsmall.vue?vue&type=template&id=4c801874&":
/*!**********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/front/carouselsmall.vue?vue&type=template&id=4c801874& ***!
  \**********************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", [
    _c(
      "section",
      {
        staticClass: "pt-105 pb-110 bg_cover",
        staticStyle: { "background-image": "url(/front/images/bg-1.jpg)" },
        attrs: { id: "page-banner", "data-overlay": "8" }
      },
      [
        _c("div", { staticClass: "container" }, [
          _c("div", { staticClass: "row" }, [
            _c("div", { staticClass: "col-lg-12" }, [
              _c("div", { staticClass: "page-banner-cont" }, [
                _vm.lang == "tm"
                  ? _c("h2", [_vm._v(_vm._s(_vm.carouselsmall_tm))])
                  : _vm._e(),
                _vm._v(" "),
                _vm.lang == "ru"
                  ? _c("h2", [_vm._v(_vm._s(_vm.carouselsmall_ru))])
                  : _vm._e(),
                _vm._v(" "),
                _vm.lang == "en"
                  ? _c("h2", [_vm._v(_vm._s(_vm.carouselsmall_en))])
                  : _vm._e()
              ])
            ])
          ])
        ])
      ]
    )
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/tazeliksingle.vue?vue&type=template&id=f1795cc6&":
/*!**********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/front/tazeliksingle.vue?vue&type=template&id=f1795cc6& ***!
  \**********************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    {},
    [
      _c(
        "carouselsmall",
        _vm._b({}, "carouselsmall", _vm.carouselsmall, false)
      ),
      _vm._v(" "),
      _c(
        "section",
        { staticClass: "pt-50 pb-50 gray-bg", attrs: { id: "event-singel" } },
        [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "events-area" }, [
              _c("div", { staticClass: "row" }, [
                _c("div", { staticClass: "col-lg-12" }, [
                  _c("div", { staticClass: "events-left" }, [
                    _vm.lang == "tm"
                      ? _c("h3", [_vm._v(_vm._s(_vm.tazelikfront.tema_tm))])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "ru"
                      ? _c("h3", [_vm._v(_vm._s(_vm.tazelikfront.tema_ru))])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "en"
                      ? _c("h3", [_vm._v(_vm._s(_vm.tazelikfront.tema_en))])
                      : _vm._e(),
                    _vm._v(" "),
                    _c("a", { attrs: { href: "#" } }, [
                      _c("span", [
                        _c("i", { staticClass: "fa fa-calendar" }),
                        _vm._v(
                          " " +
                            _vm._s(_vm.tazelikfront.gun) +
                            "/" +
                            _vm._s(_vm.tazelikfront.ay) +
                            "/" +
                            _vm._s(_vm.tazelikfront.yyl)
                        )
                      ])
                    ]),
                    _vm._v(" "),
                    _c("img", { attrs: { src: "/" + _vm.tazelikfront.photo } }),
                    _vm._v(" "),
                    _vm.lang == "tm"
                      ? _c("p", [_vm._v(_vm._s(_vm.tazelikfront.tazelik_tm))])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "ru"
                      ? _c("p", [_vm._v(_vm._s(_vm.tazelikfront.tazelik_ru))])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "en"
                      ? _c("p", [_vm._v(_vm._s(_vm.tazelikfront.tazelik_en))])
                      : _vm._e()
                  ])
                ])
              ])
            ])
          ])
        ]
      )
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/front/carouselsmall.vue":
/*!*********************************************************!*\
  !*** ./resources/js/components/front/carouselsmall.vue ***!
  \*********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _carouselsmall_vue_vue_type_template_id_4c801874___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./carouselsmall.vue?vue&type=template&id=4c801874& */ "./resources/js/components/front/carouselsmall.vue?vue&type=template&id=4c801874&");
/* harmony import */ var _carouselsmall_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./carouselsmall.vue?vue&type=script&lang=js& */ "./resources/js/components/front/carouselsmall.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _carouselsmall_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _carouselsmall_vue_vue_type_template_id_4c801874___WEBPACK_IMPORTED_MODULE_0__["render"],
  _carouselsmall_vue_vue_type_template_id_4c801874___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/front/carouselsmall.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/front/carouselsmall.vue?vue&type=script&lang=js&":
/*!**********************************************************************************!*\
  !*** ./resources/js/components/front/carouselsmall.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_carouselsmall_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./carouselsmall.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/carouselsmall.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_carouselsmall_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/front/carouselsmall.vue?vue&type=template&id=4c801874&":
/*!****************************************************************************************!*\
  !*** ./resources/js/components/front/carouselsmall.vue?vue&type=template&id=4c801874& ***!
  \****************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_carouselsmall_vue_vue_type_template_id_4c801874___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./carouselsmall.vue?vue&type=template&id=4c801874& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/carouselsmall.vue?vue&type=template&id=4c801874&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_carouselsmall_vue_vue_type_template_id_4c801874___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_carouselsmall_vue_vue_type_template_id_4c801874___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ }),

/***/ "./resources/js/components/front/tazeliksingle.vue":
/*!*********************************************************!*\
  !*** ./resources/js/components/front/tazeliksingle.vue ***!
  \*********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _tazeliksingle_vue_vue_type_template_id_f1795cc6___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./tazeliksingle.vue?vue&type=template&id=f1795cc6& */ "./resources/js/components/front/tazeliksingle.vue?vue&type=template&id=f1795cc6&");
/* harmony import */ var _tazeliksingle_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./tazeliksingle.vue?vue&type=script&lang=js& */ "./resources/js/components/front/tazeliksingle.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _tazeliksingle_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _tazeliksingle_vue_vue_type_template_id_f1795cc6___WEBPACK_IMPORTED_MODULE_0__["render"],
  _tazeliksingle_vue_vue_type_template_id_f1795cc6___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/front/tazeliksingle.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/front/tazeliksingle.vue?vue&type=script&lang=js&":
/*!**********************************************************************************!*\
  !*** ./resources/js/components/front/tazeliksingle.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_tazeliksingle_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./tazeliksingle.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/tazeliksingle.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_tazeliksingle_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/front/tazeliksingle.vue?vue&type=template&id=f1795cc6&":
/*!****************************************************************************************!*\
  !*** ./resources/js/components/front/tazeliksingle.vue?vue&type=template&id=f1795cc6& ***!
  \****************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_tazeliksingle_vue_vue_type_template_id_f1795cc6___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./tazeliksingle.vue?vue&type=template&id=f1795cc6& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/tazeliksingle.vue?vue&type=template&id=f1795cc6&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_tazeliksingle_vue_vue_type_template_id_f1795cc6___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_tazeliksingle_vue_vue_type_template_id_f1795cc6___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);