(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[5],{

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

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/habarlasmak.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/front/habarlasmak.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************************************************************************************/
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
        carouselsmall_tm: 'HABARLAŞMAK',
        carouselsmall_ru: 'КОНТАКТ',
        carouselsmall_en: 'CONTACT'
      },
      form: {
        at: null,
        email: null,
        tema: null,
        phone: null,
        message: null
      },
      errors: {}
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
  methods: {
    habarInsert: function habarInsert() {
      var _this = this;

      axios.post('/api/habar', this.form).then(function () {
        _this.$router.push({
          name: 'baradafront'
        });

        Notification.success();
      })["catch"](function (error) {
        return _this.errors = error.response.data.errors;
      });
    }
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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/habarlasmak.vue?vue&type=template&id=1dc5f05c&":
/*!********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/front/habarlasmak.vue?vue&type=template&id=1dc5f05c& ***!
  \********************************************************************************************************************************************************************************************************************/
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
        { staticClass: "pt-90 pb-120 gray-bg", attrs: { id: "contact-page" } },
        [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "row" }, [
              _c("div", { staticClass: "col-lg-7" }, [
                _c("div", { staticClass: "contact-from mt-30" }, [
                  _c("div", { staticClass: "section-title" }, [
                    _vm.lang == "tm"
                      ? _c("h5", [_vm._v("Biz bilen habarlaşyň")])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "ru"
                      ? _c("h5", [_vm._v("Связаться с нами")])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "en"
                      ? _c("h5", [_vm._v("Contact Us")])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "tm"
                      ? _c("h2", [_vm._v("Aragatnaşykda boluň")])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "ru"
                      ? _c("h2", [_vm._v("Поддерживать связь")])
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.lang == "en"
                      ? _c("h2", [_vm._v("Keep in touch")])
                      : _vm._e()
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "main-form pt-45" }, [
                    _c(
                      "form",
                      {
                        attrs: {
                          id: "contact-form",
                          "data-toggle": "validator"
                        },
                        on: {
                          submit: function($event) {
                            $event.preventDefault()
                            return _vm.habarInsert($event)
                          }
                        }
                      },
                      [
                        _c("div", { staticClass: "row" }, [
                          _c("div", { staticClass: "col-md-6" }, [
                            _c(
                              "div",
                              { staticClass: "singel-form form-group" },
                              [
                                _vm.lang == "tm"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.at,
                                          expression: "form.at"
                                        }
                                      ],
                                      attrs: {
                                        name: "name",
                                        type: "text",
                                        placeholder: "Adyňyz",
                                        "data-error": "Adyňyzy ýazmaly",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.at },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "at",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "ru"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.at,
                                          expression: "form.at"
                                        }
                                      ],
                                      attrs: {
                                        name: "name",
                                        type: "text",
                                        placeholder: "Ваше имя",
                                        "data-error": "Требуется имя.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.at },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "at",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "en"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.at,
                                          expression: "form.at"
                                        }
                                      ],
                                      attrs: {
                                        name: "name",
                                        type: "text",
                                        placeholder: "Your name",
                                        "data-error": "Name is required.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.at },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "at",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _c("div", {
                                  staticClass: "help-block with-errors"
                                })
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-md-6" }, [
                            _c(
                              "div",
                              { staticClass: "singel-form form-group" },
                              [
                                _vm.lang == "tm"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.email,
                                          expression: "form.email"
                                        }
                                      ],
                                      attrs: {
                                        name: "email",
                                        type: "email",
                                        placeholder: "E-poçta",
                                        "data-error":
                                          "Dogry e-poçta talap edilýär.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.email },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "email",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "ru"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.email,
                                          expression: "form.email"
                                        }
                                      ],
                                      attrs: {
                                        name: "email",
                                        type: "email",
                                        placeholder: "Эл. адрес",
                                        "data-error":
                                          "Требуется действительный адрес электронной почты.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.email },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "email",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "en"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.email,
                                          expression: "form.email"
                                        }
                                      ],
                                      attrs: {
                                        name: "email",
                                        type: "email",
                                        placeholder: "Email",
                                        "data-error":
                                          "Valid email is required.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.email },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "email",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _c("div", {
                                  staticClass: "help-block with-errors"
                                })
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-md-6" }, [
                            _c(
                              "div",
                              { staticClass: "singel-form form-group" },
                              [
                                _vm.lang == "tm"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.tema,
                                          expression: "form.tema"
                                        }
                                      ],
                                      attrs: {
                                        name: "subject",
                                        type: "text",
                                        placeholder: "Tema",
                                        "data-error": "Mowzuk hökmany.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.tema },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "tema",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "ru"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.tema,
                                          expression: "form.tema"
                                        }
                                      ],
                                      attrs: {
                                        name: "subject",
                                        type: "text",
                                        placeholder: "Тема",
                                        "data-error": "Тема обязательна.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.tema },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "tema",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "en"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.tema,
                                          expression: "form.tema"
                                        }
                                      ],
                                      attrs: {
                                        name: "subject",
                                        type: "text",
                                        placeholder: "Subject",
                                        "data-error": "Subject is required.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.tema },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "tema",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _c("div", {
                                  staticClass: "help-block with-errors"
                                })
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-md-6" }, [
                            _c(
                              "div",
                              { staticClass: "singel-form form-group" },
                              [
                                _vm.lang == "tm"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.phone,
                                          expression: "form.phone"
                                        }
                                      ],
                                      attrs: {
                                        name: "phone",
                                        type: "text",
                                        placeholder: "Phone",
                                        "data-error": "Telefon nomer gerek",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.phone },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "phone",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "ru"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.phone,
                                          expression: "form.phone"
                                        }
                                      ],
                                      attrs: {
                                        name: "phone",
                                        type: "text",
                                        placeholder: "Phone",
                                        "data-error": "Требуется телефон.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.phone },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "phone",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "en"
                                  ? _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.phone,
                                          expression: "form.phone"
                                        }
                                      ],
                                      attrs: {
                                        name: "phone",
                                        type: "text",
                                        placeholder: "Phone",
                                        "data-error": "Phone is required.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.phone },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "phone",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _c("div", {
                                  staticClass: "help-block with-errors"
                                })
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-md-12" }, [
                            _c(
                              "div",
                              { staticClass: "singel-form form-group" },
                              [
                                _vm.lang == "tm"
                                  ? _c("textarea", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.message,
                                          expression: "form.message"
                                        }
                                      ],
                                      attrs: {
                                        name: "messege",
                                        placeholder: "Habar",
                                        "data-error":
                                          "Haýyş edýäris, bize habar iberiň.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.message },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "message",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "ru"
                                  ? _c("textarea", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.message,
                                          expression: "form.message"
                                        }
                                      ],
                                      attrs: {
                                        name: "messege",
                                        placeholder: "Сообщение",
                                        "data-error":
                                          "Пожалуйста, оставьте нам сообщение.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.message },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "message",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _vm.lang == "en"
                                  ? _c("textarea", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.message,
                                          expression: "form.message"
                                        }
                                      ],
                                      attrs: {
                                        name: "messege",
                                        placeholder: "Message",
                                        "data-error":
                                          "Please,leave us a message.",
                                        required: "required"
                                      },
                                      domProps: { value: _vm.form.message },
                                      on: {
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "message",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  : _vm._e(),
                                _vm._v(" "),
                                _c("div", {
                                  staticClass: "help-block with-errors"
                                })
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c("p", { staticClass: "form-message" }),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-md-12" }, [
                            _c("div", { staticClass: "singel-form" }, [
                              _vm.lang == "tm"
                                ? _c(
                                    "button",
                                    {
                                      staticClass: "main-btn",
                                      attrs: { type: "submit" }
                                    },
                                    [_vm._v("Iber")]
                                  )
                                : _vm._e(),
                              _vm._v(" "),
                              _vm.lang == "ru"
                                ? _c(
                                    "button",
                                    {
                                      staticClass: "main-btn",
                                      attrs: { type: "submit" }
                                    },
                                    [_vm._v("Отправлять")]
                                  )
                                : _vm._e(),
                              _vm._v(" "),
                              _vm.lang == "en"
                                ? _c(
                                    "button",
                                    {
                                      staticClass: "main-btn",
                                      attrs: { type: "submit" }
                                    },
                                    [_vm._v("Send")]
                                  )
                                : _vm._e()
                            ])
                          ])
                        ])
                      ]
                    )
                  ])
                ])
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "col-lg-5" }, [
                _c("div", { staticClass: "contact-address mt-30" }, [
                  _c("ul", [
                    _c("li", [
                      _c("div", { staticClass: "singel-address" }, [
                        _vm._m(0),
                        _vm._v(" "),
                        _c("div", { staticClass: "cont" }, [
                          _vm.lang == "tm"
                            ? _c("p", [
                                _vm._v(
                                  "745400, Mary şäheriniň Baýramhan köçesiniň 62-nji jaýy"
                                )
                              ])
                            : _vm._e(),
                          _vm._v(" "),
                          _vm.lang == "ru"
                            ? _c("p", [
                                _vm._v(
                                  "745400, г.Мары, улица Байрамхана, дом 62"
                                )
                              ])
                            : _vm._e(),
                          _vm._v(" "),
                          _vm.lang == "en"
                            ? _c("p", [
                                _vm._v("745400, Mary city, Bayramkhan str. 62")
                              ])
                            : _vm._e()
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _vm._m(1),
                    _vm._v(" "),
                    _vm._m(2)
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
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "icon" }, [
      _c("i", { staticClass: "fa fa-home" })
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("div", { staticClass: "singel-address" }, [
        _c("div", { staticClass: "icon" }, [
          _c("i", { staticClass: "fa fa-phone" })
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "cont" }, [
          _c("p", [_vm._v("+993 522 5-75-02")])
        ])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("div", { staticClass: "singel-address" }, [
        _c("div", { staticClass: "icon" }, [
          _c("i", { staticClass: "fa fa-envelope-o" })
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "cont" }, [
          _c("p", [_vm._v("marytdei@online.tm")])
        ])
      ])
    ])
  }
]
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

/***/ "./resources/js/components/front/habarlasmak.vue":
/*!*******************************************************!*\
  !*** ./resources/js/components/front/habarlasmak.vue ***!
  \*******************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _habarlasmak_vue_vue_type_template_id_1dc5f05c___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./habarlasmak.vue?vue&type=template&id=1dc5f05c& */ "./resources/js/components/front/habarlasmak.vue?vue&type=template&id=1dc5f05c&");
/* harmony import */ var _habarlasmak_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./habarlasmak.vue?vue&type=script&lang=js& */ "./resources/js/components/front/habarlasmak.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _habarlasmak_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _habarlasmak_vue_vue_type_template_id_1dc5f05c___WEBPACK_IMPORTED_MODULE_0__["render"],
  _habarlasmak_vue_vue_type_template_id_1dc5f05c___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/front/habarlasmak.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/front/habarlasmak.vue?vue&type=script&lang=js&":
/*!********************************************************************************!*\
  !*** ./resources/js/components/front/habarlasmak.vue?vue&type=script&lang=js& ***!
  \********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_habarlasmak_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./habarlasmak.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/habarlasmak.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_habarlasmak_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/front/habarlasmak.vue?vue&type=template&id=1dc5f05c&":
/*!**************************************************************************************!*\
  !*** ./resources/js/components/front/habarlasmak.vue?vue&type=template&id=1dc5f05c& ***!
  \**************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_habarlasmak_vue_vue_type_template_id_1dc5f05c___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./habarlasmak.vue?vue&type=template&id=1dc5f05c& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/front/habarlasmak.vue?vue&type=template&id=1dc5f05c&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_habarlasmak_vue_vue_type_template_id_1dc5f05c___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_habarlasmak_vue_vue_type_template_id_1dc5f05c___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);