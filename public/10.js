(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[10],{

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

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/ugurwehunfront.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/front/ugurwehunfront.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************************/
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
        carouselsmall_tm: 'UGURLAR WE HÜNÄRLER',
        carouselsmall_ru: 'НАПРАВЛЕНИЯ И СПЕЦИАЛЬНОСТИ',
        carouselsmall_en: 'AREAS AND SPECIALTIES'
      },
      ugurs: null,
      loading: false,
      loadingforfiles: false,
      files: null
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
    axios.get('/api/ugurfront').then(function (response) {
      _this.ugurs = response.data.data;
      _this.loading = false;
    });
    this.loadingforfiles = true;
    axios.get('/api/filefront').then(function (response) {
      _this.files = response.data.data;
      _this.loadingforfiles = false;
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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/ugurwehunfront.vue?vue&type=template&id=ea207f14&":
/*!***********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/front/ugurwehunfront.vue?vue&type=template&id=ea207f14& ***!
  \***********************************************************************************************************************************************************************************************************************/
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
    [
      _c(
        "carouselsmall",
        _vm._b({}, "carouselsmall", _vm.carouselsmall, false)
      ),
      _vm._v(" "),
      _c(
        "section",
        { staticClass: "pt-20 pb-50 gray-bg", attrs: { id: "event-singel" } },
        [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "events-area" }, [
              _c("div", { staticClass: "row" }, [
                _c("div", { staticClass: "col-lg-12" }, [
                  _c(
                    "div",
                    { staticClass: "events-left" },
                    [
                      _vm.lang == "tm"
                        ? _c("h3", [
                            _vm._v("Türkmenistanyň Döwlet energetika instituty")
                          ])
                        : _vm._e(),
                      _vm._v(" "),
                      _vm.lang == "ru"
                        ? _c("h3", [
                            _vm._v(
                              "Государственный энергетический институт Туркменистана"
                            )
                          ])
                        : _vm._e(),
                      _vm._v(" "),
                      _vm.lang == "en"
                        ? _c("h3", [
                            _vm._v("The State Energy Institute of Turkmenistan")
                          ])
                        : _vm._e(),
                      _vm._v(" "),
                      _c("br"),
                      _vm._v(" "),
                      _vm._l(_vm.ugurs, function(ugur) {
                        return _c(
                          "div",
                          { key: ugur.id },
                          [
                            _vm.lang == "tm"
                              ? _c("h5", [_vm._v(_vm._s(ugur.ugur_at_tm))])
                              : _vm._e(),
                            _vm._v(" "),
                            _vm.lang == "ru"
                              ? _c("h5", [_vm._v(_vm._s(ugur.ugur_at_ru))])
                              : _vm._e(),
                            _vm._v(" "),
                            _vm.lang == "en"
                              ? _c("h5", [_vm._v(_vm._s(ugur.ugur_at_en))])
                              : _vm._e(),
                            _vm._v(" "),
                            _vm._l(_vm.files, function(file) {
                              return ugur.id == file.ugur_id
                                ? _c("div", { key: file.id }, [
                                    _c("a", { attrs: { href: file.file } }, [
                                      _vm.lang == "tm"
                                        ? _c("p", [
                                            _c("img", {
                                              staticStyle: {
                                                "margin-top": "0px"
                                              },
                                              attrs: {
                                                src: "/front/images/word.png"
                                              }
                                            }),
                                            _vm._v(_vm._s(file.file_at_tm))
                                          ])
                                        : _vm._e(),
                                      _vm._v(" "),
                                      _vm.lang == "ru"
                                        ? _c("p", [
                                            _c("img", {
                                              staticStyle: {
                                                "margin-top": "0px"
                                              },
                                              attrs: {
                                                src: "/front/images/word.png"
                                              }
                                            }),
                                            _vm._v(_vm._s(file.file_at_ru))
                                          ])
                                        : _vm._e(),
                                      _vm._v(" "),
                                      _vm.lang == "en"
                                        ? _c("p", [
                                            _c("img", {
                                              staticStyle: {
                                                "margin-top": "0px"
                                              },
                                              attrs: {
                                                src: "/front/images/word.png"
                                              }
                                            }),
                                            _vm._v(_vm._s(file.file_at_en))
                                          ])
                                        : _vm._e()
                                    ])
                                  ])
                                : _vm._e()
                            }),
                            _vm._v(" "),
                            _c("br")
                          ],
                          2
                        )
                      })
                    ],
                    2
                  )
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

/***/ "./resources/js/components/front/ugurwehunfront.vue":
/*!**********************************************************!*\
  !*** ./resources/js/components/front/ugurwehunfront.vue ***!
  \**********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ugurwehunfront_vue_vue_type_template_id_ea207f14___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ugurwehunfront.vue?vue&type=template&id=ea207f14& */ "./resources/js/components/front/ugurwehunfront.vue?vue&type=template&id=ea207f14&");
/* harmony import */ var _ugurwehunfront_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ugurwehunfront.vue?vue&type=script&lang=js& */ "./resources/js/components/front/ugurwehunfront.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _ugurwehunfront_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ugurwehunfront_vue_vue_type_template_id_ea207f14___WEBPACK_IMPORTED_MODULE_0__["render"],
  _ugurwehunfront_vue_vue_type_template_id_ea207f14___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/front/ugurwehunfront.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/front/ugurwehunfront.vue?vue&type=script&lang=js&":
/*!***********************************************************************************!*\
  !*** ./resources/js/components/front/ugurwehunfront.vue?vue&type=script&lang=js& ***!
  \***********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ugurwehunfront_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./ugurwehunfront.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/ugurwehunfront.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ugurwehunfront_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/front/ugurwehunfront.vue?vue&type=template&id=ea207f14&":
/*!*****************************************************************************************!*\
  !*** ./resources/js/components/front/ugurwehunfront.vue?vue&type=template&id=ea207f14& ***!
  \*****************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ugurwehunfront_vue_vue_type_template_id_ea207f14___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./ugurwehunfront.vue?vue&type=template&id=ea207f14& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/ugurwehunfront.vue?vue&type=template&id=ea207f14&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ugurwehunfront_vue_vue_type_template_id_ea207f14___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ugurwehunfront_vue_vue_type_template_id_ea207f14___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);