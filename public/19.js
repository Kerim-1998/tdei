(window.webpackJsonp=window.webpackJsonp||[]).push([[19],{117:function(t,e,r){"use strict";r.r(e);var a=r(2),n=r(1);function s(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);e&&(a=a.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,a)}return r}function l(t,e,r){return e in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}var o={components:{carouselsmall:a.a},data:function(){return{carouselsmall:{carouselsmall_tm:"KAFEDRA",carouselsmall_ru:"ОТДЕЛЕНИЕ",carouselsmall_en:"DEPARTMENT"},kafwebolfront:"",loading:!1}},computed:function(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?s(Object(r),!0).forEach((function(e){l(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):s(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}({},Object(n.b)(["itemsInBasket"]),{},Object(n.c)({basket:function(t){return t.basket.items},lang:function(t){return t.lang.items[0].lang}})),created:function(){var t=this;this.loading=!0,axios.get("/api/kafwebolfront/"+this.$route.params.id).then((function(e){t.kafwebolfront=e.data.data,t.loading=!1}))}},i=r(0),c=Object(i.a)(o,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{},[r("carouselsmall",t._b({},"carouselsmall",t.carouselsmall,!1)),t._v(" "),r("section",{staticClass:"pt-50 pb-50 gray-bg",attrs:{id:"event-singel"}},[r("div",{staticClass:"container"},[r("div",{staticClass:"events-area"},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-12"},[r("div",{staticClass:"events-left"},["tm"==t.lang?r("h3",[t._v(t._s(t.kafwebolfront.kaf_at_tm))]):t._e(),t._v(" "),"ru"==t.lang?r("h3",[t._v(t._s(t.kafwebolfront.kaf_at_ru))]):t._e(),t._v(" "),"en"==t.lang?r("h3",[t._v(t._s(t.kafwebolfront.kaf_at_en))]):t._e(),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-8 col-md-8"},[r("img",{attrs:{src:"/"+t.kafwebolfront.bol_photo}})]),t._v(" "),r("div",{staticClass:"col-lg-4 col-md-4",staticStyle:{"text-align":"center"}},[r("div",{staticClass:"saidbar-post mt-30"},[r("ul",[r("li",[r("router-link",{attrs:{to:{name:"kafmugfront",params:{id:t.kafwebolfront.id}}}},[r("h4",[t._v("Kafedranyň mugallymlary")]),t._v(" "),r("div",{staticClass:"singel-post"},[r("div",{staticClass:"thum"},[r("img",{attrs:{src:"/front/images/all-icon/infor.png"}})])])])],1)])])])]),t._v(" "),"tm"==t.lang?r("div",{domProps:{innerHTML:t._s(t.kafwebolfront.dusundiris_tm)}}):t._e(),t._v(" "),"ru"==t.lang?r("div",{domProps:{innerHTML:t._s(t.kafwebolfront.dusundiris_ru)}}):t._e(),t._v(" "),"en"==t.lang?r("div",{domProps:{innerHTML:t._s(t.kafwebolfront.dusundiris_en)}}):t._e()])])])])])])],1)}),[],!1,null,null,null);e.default=c.exports},2:function(t,e,r){"use strict";var a=r(1);function n(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);e&&(a=a.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,a)}return r}function s(t,e,r){return e in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}var l={props:{carouselsmall_tm:String,carouselsmall_ru:String,carouselsmall_en:String},computed:function(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?n(Object(r),!0).forEach((function(e){s(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):n(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}({},Object(a.b)(["itemsInBasket"]),{},Object(a.c)({basket:function(t){return t.basket.items},lang:function(t){return t.lang.items[0].lang}}))},o=r(0),i=Object(o.a)(l,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("section",{staticClass:"pt-105 pb-110 bg_cover",staticStyle:{"background-image":"url(/front/images/bg-1.jpg)"},attrs:{id:"page-banner","data-overlay":"8"}},[r("div",{staticClass:"container"},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-12"},[r("div",{staticClass:"page-banner-cont"},["tm"==t.lang?r("h2",[t._v(t._s(t.carouselsmall_tm))]):t._e(),t._v(" "),"ru"==t.lang?r("h2",[t._v(t._s(t.carouselsmall_ru))]):t._e(),t._v(" "),"en"==t.lang?r("h2",[t._v(t._s(t.carouselsmall_en))]):t._e()])])])])])])}),[],!1,null,null,null);e.a=i.exports}}]);