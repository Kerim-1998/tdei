(window.webpackJsonp=window.webpackJsonp||[]).push([[22],{2:function(t,e,n){"use strict";var a=n(1);function s(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);e&&(a=a.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,a)}return n}function r(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}var i={props:{carouselsmall_tm:String,carouselsmall_ru:String,carouselsmall_en:String},computed:function(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?s(Object(n),!0).forEach((function(e){r(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):s(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}({},Object(a.b)(["itemsInBasket"]),{},Object(a.c)({basket:function(t){return t.basket.items},lang:function(t){return t.lang.items[0].lang}}))},l=n(0),c=Object(l.a)(i,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("section",{staticClass:"pt-105 pb-110 bg_cover",staticStyle:{"background-image":"url(/front/images/bg-1.jpg)"},attrs:{id:"page-banner","data-overlay":"8"}},[n("div",{staticClass:"container"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-lg-12"},[n("div",{staticClass:"page-banner-cont"},["tm"==t.lang?n("h2",[t._v(t._s(t.carouselsmall_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h2",[t._v(t._s(t.carouselsmall_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h2",[t._v(t._s(t.carouselsmall_en))]):t._e()])])])])])])}),[],!1,null,null,null);e.a=c.exports},58:function(t,e,n){"use strict";n.r(e);var a=n(2),s=n(1);function r(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);e&&(a=a.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,a)}return n}function i(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}var l={components:{carouselsmall:a.a},data:function(){return{loading:!1,mustuns:null}},computed:function(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?r(Object(n),!0).forEach((function(e){i(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):r(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}({},Object(s.b)(["itemsInBasket"]),{},Object(s.c)({basket:function(t){return t.basket.items},lang:function(t){return t.lang.items[0].lang}})),created:function(){var t=this;this.loading=!0,axios.get("/api/mustunfront").then((function(e){t.mustuns=e.data.data,t.loading=!1}))}},c=n(0),o=Object(c.a)(l,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("section",{staticClass:"pt-60 pb-30 gray-bg",attrs:{id:"courses-part"}},[n("div",{staticClass:"container"},[n("div",{staticClass:"tab-content",attrs:{id:"myTabContent"}},[n("div",{staticClass:"tab-pane fade show active",attrs:{id:"courses-grid",role:"tabpanel","aria-labelledby":"courses-grid-tab"}},[n("div",{staticClass:"title pb-15",staticStyle:{"text-align":"center"}},["tm"==t.lang?n("h3",[t._v("Mugallymlarymyzyň üstünlikleri")]):t._e(),t._v(" "),"ru"==t.lang?n("h3",[t._v("Достижения наших учителей")]):t._e(),t._v(" "),"en"==t.lang?n("h3",[t._v("Achievements of our teachers")]):t._e(),t._v(" "),"tm"==t.lang?n("h5",[t._v("Alnan patentler we gazanylan dürli üstünlikler")]):t._e(),t._v(" "),"ru"==t.lang?n("h5",[t._v("Полученные патенты и различные достижения")]):t._e(),t._v(" "),"en"==t.lang?n("h5",[t._v("Patents received and various achievements")]):t._e()]),t._v(" "),n("div",{staticClass:"row"},t._l(t.mustuns,(function(e){return n("div",{key:e.id,staticClass:"col-lg-4 col-md-6"},[n("div",{staticClass:"singel-course mt-30"},[n("div",{staticClass:"thum"},[n("div",{staticClass:"image"},[n("img",{attrs:{src:"/"+e.patent_photo}})])]),t._v(" "),n("div",{staticClass:"cont"},[n("div",{staticClass:"course-teacher"},[n("div",{staticClass:"name pt-10"},[n("router-link",{attrs:{to:{name:"ustunlikfrontsingle",params:{id:e.id}}}},["tm"==t.lang?n("h6",[t._v(t._s(e.patent_ady_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h6",[t._v(t._s(e.patent_ady_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h6",[t._v(t._s(e.patent_ady_en))]):t._e()])],1)]),t._v(" "),n("div",{},[n("div",{staticClass:"name pt-10"},[n("router-link",{attrs:{to:{name:"ustunlikfrontsingle",params:{id:e.id}}}},["tm"==t.lang?n("h6",[t._v(t._s(e.mug_ady_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h6",[t._v(t._s(e.mug_ady_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h6",[t._v(t._s(e.mug_ady_en))]):t._e()])],1),t._v(" "),n("div",{staticClass:"name pt-10"},[n("router-link",{attrs:{to:{name:"ustunlikfrontsingle",params:{id:e.id}}}},["tm"==t.lang?n("h6",{staticStyle:{"font-size":"12px"}},[t._v(t._s(e.mug_ady_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h6",{staticStyle:{"font-size":"12px"}},[t._v(t._s(e.mug_ady_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h6",{staticStyle:{"font-size":"12px"}},[t._v(t._s(e.mug_ady_en))]):t._e()])],1)])])])])})),0)])])])])])}),[],!1,null,null,null).exports;function _(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);e&&(a=a.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,a)}return n}function u(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}var v={data:function(){return{olimps:null,loading:!1,loadingforyenijis:!1,yenijis:null}},computed:function(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?_(Object(n),!0).forEach((function(e){u(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):_(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}({},Object(s.b)(["itemsInBasket"]),{},Object(s.c)({basket:function(t){return t.basket.items},lang:function(t){return t.lang.items[0].lang}})),created:function(){var t=this;this.loading=!0,axios.get("/api/olimpfront").then((function(e){t.olimps=e.data.data,t.loading=!1})),this.loadingforyenijis=!0,axios.get("/api/yenijifront").then((function(e){t.yenijis=e.data.data,t.loadingforyenijis=!1}))}},g=Object(c.a)(v,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("section",{staticClass:"pt-50 pb-50 gray-bg",attrs:{id:"blog-singel"}},[n("div",{staticClass:"container"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-lg-12"},[n("div",{staticClass:"blog-details mt-30"},[n("div",{staticClass:"cont"},[n("div",{staticClass:"blog-comment pt-45"},[n("div",{staticClass:"title pb-15",staticStyle:{"text-align":"center"}},["tm"==t.lang?n("h3",[t._v("Üstünliklerimiz")]):t._e(),t._v(" "),"ru"==t.lang?n("h3",[t._v("Наши успехи")]):t._e(),t._v(" "),"en"==t.lang?n("h3",[t._v("Our successes")]):t._e()]),t._v(" "),t._l(t.olimps,(function(e){return n("div",{key:e.id},[n("div",{staticClass:"comment-description pt-20",staticStyle:{"text-align":"center"}},["tm"==t.lang?n("p",[t._v(t._s(e.olimp_at_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("p",[t._v(t._s(e.olimp_at_ru))]):t._e(),t._v(" "),"en"==t.lang?n("p",[t._v(t._s(e.olimp_at_en))]):t._e()]),t._v(" "),n("ul",[n("li",t._l(t.yenijis,(function(a){return e.id==a.olimp_id?n("div",{key:a.id,staticClass:"comment"},[n("div",{staticClass:"comment-author"},[n("div",{staticClass:"author-thum"},[n("img",{attrs:{src:"/"+a.photo}})]),t._v(" "),n("div",{staticClass:"comment-name"},["tm"==t.lang?n("h6",[t._v(t._s(a.talyp_at_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h6",[t._v(t._s(a.talyp_at_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h6",[t._v(t._s(a.talyp_at_en))]):t._e()]),t._v(" "),n("div",{staticClass:"comment-name"},["tm"==t.lang?n("h6",[t._v(t._s(a.ders_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h6",[t._v(t._s(a.ders_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h6",[t._v(t._s(a.ders_en))]):t._e()]),t._v(" "),n("div",{staticClass:"comment-name"},["tm"==t.lang?n("h6",[t._v(t._s(a.orun_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h6",[t._v(t._s(a.orun_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h6",[t._v(t._s(a.orun_en))]):t._e()])])]):t._e()})),0)])])}))],2)])])])])])])])}),[],!1,null,null,null).exports;function p(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);e&&(a=a.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,a)}return n}function m(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}var d={data:function(){return{yaryss:null,loading:!1,loadingfortalyps:!1,talyps:null}},computed:function(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?p(Object(n),!0).forEach((function(e){m(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):p(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}({},Object(s.b)(["itemsInBasket"]),{},Object(s.c)({basket:function(t){return t.basket.items},lang:function(t){return t.lang.items[0].lang}})),created:function(){var t=this;this.loading=!0,axios.get("/api/yarysfront").then((function(e){t.yaryss=e.data.data,t.loading=!1})),this.loadingfortalyps=!0,axios.get("/api/talypfront").then((function(e){t.talyps=e.data.data,t.loadingfortalyps=!1}))}},b=Object(c.a)(d,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("section",{staticClass:"pt-50 pb-50 gray-bg",attrs:{id:"teachers-page"}},[n("div",{staticClass:"container"},t._l(t.yaryss,(function(e){return n("div",{key:e.id},["tm"==t.lang?n("h3",{staticClass:"pt-100"},[t._v(t._s(e.yarys_at_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h3",{staticClass:"pt-100"},[t._v(t._s(e.yarys_at_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h3",{staticClass:"pt-100"},[t._v(t._s(e.yarys_at_en))]):t._e(),t._v(" "),n("div",{staticClass:"row"},t._l(t.talyps,(function(a){return e.id==a.yarys_id?n("div",{key:a.id,staticClass:"col-lg-4 col-sm-6"},[n("div",{staticClass:"singel-teachers mt-30 text-center"},[n("div",{staticClass:"image"},[n("img",{attrs:{src:"/"+a.photo}})]),t._v(" "),n("div",{staticClass:"cont"},["tm"==t.lang?n("h6",[t._v(t._s(a.at_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("h6",[t._v(t._s(a.at_ru))]):t._e(),t._v(" "),"en"==t.lang?n("h6",[t._v(t._s(a.at_en))]):t._e(),t._v(" "),"tm"==t.lang?n("div",[n("span",[t._v(t._s(a.kurs_tm))]),n("br")]):t._e(),t._v(" "),"ru"==t.lang?n("div",[n("span",[t._v(t._s(a.kurs_ru))]),n("br")]):t._e(),t._v(" "),"en"==t.lang?n("div",[n("span",[t._v(t._s(a.kurs_en))]),n("br")]):t._e(),t._v(" "),"tm"==t.lang?n("span",[t._v(t._s(a.ders_tm))]):t._e(),t._v(" "),"ru"==t.lang?n("span",[t._v(t._s(a.ders_ru))]):t._e(),t._v(" "),"en"==t.lang?n("span",[t._v(t._s(a.ders_en))]):t._e()])])]):t._e()})),0)])})),0)])])}),[],!1,null,null,null).exports,f={components:{carouselsmall:a.a,mugustunlik:o,ustunliklerimiz:g,tustun:b},data:function(){return{carouselsmall:{carouselsmall_tm:"ÜSTÜNLIKLERIMIZ",carouselsmall_ru:"НАШИ УСПЕХИ",carouselsmall_en:"ADVANTAGES"}}}},y=Object(c.a)(f,(function(){var t=this.$createElement,e=this._self._c||t;return e("div",[e("carouselsmall",this._b({},"carouselsmall",this.carouselsmall,!1)),this._v(" "),e("mugustunlik"),this._v(" "),e("ustunliklerimiz"),this._v(" "),e("tustun")],1)}),[],!1,null,null,null);e.default=y.exports}}]);