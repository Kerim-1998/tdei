let index = require('./components/front/index.vue').default;
export const routes = [
  //admin
  { 
    path: '/tdeiadmin/', 
    name:'/tdeiadmin',
    component: () => import(/* webpackChunckName: "/tdeiadmin" */ "./components/auth/login.vue")
  },
  // { 
  //   path: '/tdeiadmin/register', 
  //   name:'register',
  //   component: () => import(/* webpackChunckName: "register" */ "./components/auth/register.vue")
  // },
  // { 
  //   path: '/tdeiadmin/forget', 
  //   name:'forget',
  //   component: () => import(/* webpackChunckName: "forget" */ "./components/auth/forget.vue")
  // },
  { 
    path: '/tdeiadmin/logout', 
    name:'logout',
    component: () => import(/* webpackChunckName: "logout" */ "./components/auth/logout.vue")
  },
  { 
    path: '/tdeiadmin/home', 
    name:'home',
    component: () => import(/* webpackChunckName: "home" */ "./components/home.vue")
  },
  { 
    path: '/tdeiadmin/store-tazelik', 
    name:'store-tazelik',
    component: () => import(/* webpackChunckName: "store-tazelik" */ "./components/tazelik/create.vue")
  },
  { 
    path: '/tdeiadmin/tazelik', 
    name:'tazelik',
    component: () => import(/* webpackChunckName: "tazelik" */ "./components/tazelik/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-tazelik/:id', 
    name:'edit-tazelik',
    component: () => import(/* webpackChunckName: "edit-tazelik" */ "./components/tazelik/edit.vue")
  },

  { 
    path: '/tdeiadmin/store-barada', 
    name:'store-barada',
    component: () => import(/* webpackChunckName: "store-barada" */ "./components/barada/create.vue")
  },
  { 
    path: '/tdeiadmin/barada', 
    name:'barada',
    component: () => import(/* webpackChunckName: "barada" */ "./components/barada/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-barada/:id', 
    name:'edit-barada',
    component: () => import(/* webpackChunckName: "edit-barada" */ "./components/barada/edit.vue")
  },

  { 
    path: '/tdeiadmin/store-kafwebol', 
    name:'store-kafwebol',
    component: () => import(/* webpackChunckName: "store-kafwebol" */ "./components/kafwebol/create.vue")
  },
  { 
    path: '/tdeiadmin/kafwebol', 
    name:'kafwebol',
    component: () => import(/* webpackChunckName: "kafwebol" */ "./components/kafwebol/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-kafwebol/:id', 
    name:'edit-kafwebol',
    component: () => import(/* webpackChunckName: "edit-kafwebol" */ "./components/kafwebol/edit.vue")
  },

  { 
    path: '/tdeiadmin/store-kafmug', 
    name:'store-kafmug',
    component: () => import(/* webpackChunckName: "store-kafmug" */ "./components/kafmug/create.vue")
  },
  { 
    path: '/tdeiadmin/kafmug', 
    name:'kafmug',
    component: () => import(/* webpackChunckName: "kafmug" */ "./components/kafmug/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-kafmug/:id', 
    name:'edit-kafmug',
    component: () => import(/* webpackChunckName: "edit-kafmug" */ "./components/kafmug/edit.vue")
  },

  { 
    path: '/tdeiadmin/store-ugur', 
    name:'store-ugur',
    component: () => import(/* webpackChunckName: "store-ugur" */ "./components/ugur/create.vue")
  },
  { 
    path: '/tdeiadmin/ugur', 
    name:'ugur',
    component: () => import(/* webpackChunckName: "ugur" */ "./components/ugur/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-ugur/:id', 
    name:'edit-ugur',
    component: () => import(/* webpackChunckName: "edit-ugur" */ "./components/ugur/edit.vue")
  },
  { 
    path: '/tdeiadmin/store-file', 
    name:'store-file',
    component: () => import(/* webpackChunckName: "store-file" */ "./components/file/create.vue")
  },
  { 
    path: '/tdeiadmin/file', 
    name:'file',
    component: () => import(/* webpackChunckName: "file" */ "./components/file/index.vue")
  },
  { 
    path: '/tdeiadmin/store-hyzmat', 
    name:'store-hyzmat',
    component: () => import(/* webpackChunckName: "store-hyzmat" */ "./components/hyzmat/create.vue")
  },
  { 
    path: '/tdeiadmin/hyzmat', 
    name:'hyzmat',
    component: () => import(/* webpackChunckName: "hyzmat" */ "./components/hyzmat/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-hyzmat/:id', 
    name:'edit-hyzmat',
    component: () => import(/* webpackChunckName: "file" */ "./components/hyzmat/edit.vue")
  },
  { 
    path: '/tdeiadmin/store-mustun', 
    name:'store-mustun',
    component: () => import(/* webpackChunckName: "store-mustun" */ "./components/mustun/create.vue")
  },
  { 
    path: '/tdeiadmin/mustun', 
    name:'mustun',
    component: () => import(/* webpackChunckName: "mustun" */ "./components/mustun/index.vue")
  },
  { 
    path: '/tdeiadmin/store-olimp', 
    name:'store-olimp',
    component: () => import(/* webpackChunckName: "store-olimp" */ "./components/olimp/create.vue")
  },
  { 
    path: '/tdeiadmin/olimp', 
    name:'olimp',
    component: () => import(/* webpackChunckName: "olimp" */ "./components/olimp/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-olimp/:id', 
    name:'edit-olimp',
    component: () => import(/* webpackChunckName: "edit-olimp" */ "./components/olimp/edit.vue")
  },
  { 
    path: '/tdeiadmin/store-ustun', 
    name:'store-ustun',
    component: () => import(/* webpackChunckName: "store-ustun" */ "./components/ustun/create.vue")
  },
  { 
    path: '/tdeiadmin/ustun', 
    name:'ustun',
    component: () => import(/* webpackChunckName: "ustun" */ "./components/ustun/index.vue")
  },
  { 
    path: '/tdeiadmin/store-yarys', 
    name:'store-yarys',
    component: () => import(/* webpackChunckName: "store-yarys" */ "./components/yarys/create.vue")
  },
  { 
    path: '/tdeiadmin/yarys', 
    name:'yarys',
    component: () => import(/* webpackChunckName: "yarys" */ "./components/yarys/index.vue")
  },
  { 
    path: '/tdeiadmin/store-talyp', 
    name:'store-talyp',
    component: () => import(/* webpackChunckName: "store-talyp" */ "./components/talyp/create.vue")
  },
  { 
    path: '/tdeiadmin/talyp', 
    name:'talyp',
    component: () => import(/* webpackChunckName: "talyp" */ "./components/talyp/index.vue")
  },
  { 
    path: '/tdeiadmin/habar', 
    name:'habar',
    component: () => import(/* webpackChunckName: "habar" */ "./components/habar/index.vue")
  },
  { 
    path: '/tdeiadmin/store-yyl', 
    name:'store-yyl',
    component: () => import(/* webpackChunckName: "store-yyl" */ "./components/yyl/create.vue")
  },
  { 
    path: '/tdeiadmin/yyl', 
    name:'yyl',
    component: () => import(/* webpackChunckName: "yyl" */ "./components/yyl/index.vue")
  },
  { 
    path: '/tdeiadmin/store-dalasgar', 
    name:'store-dalasgar',
    component: () => import(/* webpackChunckName: "store-dalasgar" */ "./components/dalasgar/create.vue")
  },
  { 
    path: '/tdeiadmin/dalasgar', 
    name:'dalasgar',
    component: () => import(/* webpackChunckName: "dalasgar" */ "./components/dalasgar/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-dalasgar/:id', 
    name:'edit-dalasgar',
    component: () => import(/* webpackChunckName: "edit-dalasgar" */ "./components/dalasgar/edit.vue")
  },
  { 
    path: '/tdeiadmin/store-baslesik', 
    name:'store-baslesik',
    component: () => import(/* webpackChunckName: "store-baslesik" */ "./components/baslesik/create.vue")
  },
  { 
    path: '/tdeiadmin/baslesik', 
    name:'baslesik',
    component: () => import(/* webpackChunckName: "baslesik" */ "./components/baslesik/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-baslesik/:id', 
    name:'edit-baslesik',
    component: () => import(/* webpackChunckName: "edit-baslesik" */ "./components/baslesik/edit.vue")
  },
  { 
    path: '/tdeiadmin/store-edusundiris', 
    name:'store-edusundiris',
    component: () => import(/* webpackChunckName: "store-edusundiris" */ "./components/edusundiris/create.vue")
  },
  { 
    path: '/tdeiadmin/edusundiris', 
    name:'edusundiris',
    component: () => import(/* webpackChunckName: "edusundiris" */ "./components/edusundiris/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-edusundiris/:id', 
    name:'edit-edusundiris',
    component: () => import(/* webpackChunckName: "edit-edusundiris" */ "./components/edusundiris/edit.vue")
  },
  { 
    path: '/tdeiadmin/store-eders', 
    name:'store-eders',
    component: () => import(/* webpackChunckName: "store-eders" */ "./components/eders/create.vue")
  },
  { 
    path: '/tdeiadmin/eders', 
    name:'eders',
    component: () => import(/* webpackChunckName: "eders" */ "./components/eders/index.vue")
  },
  { 
    path: '/tdeiadmin/edit-eders/:id', 
    name:'edit-eders',
    component: () => import(/* webpackChunckName: "edit-eders" */ "./components/eders/edit.vue")
  },
  { 
    path: '/tdeiadmin/store-tema', 
    name:'store-tema',
    component: () => import(/* webpackChunckName: "store-tema" */ "./components/tema/create.vue")
  },
  { 
    path: '/tdeiadmin/tema', 
    name:'tema',
    component: () => import(/* webpackChunckName: "tema" */ "./components/tema/index.vue")
  },
  { 
    path: '/tdeiadmin/store-temafile', 
    name:'store-temafile',
    component: () => import(/* webpackChunckName: "store-temafile" */ "./components/temafile/create.vue")
  },
  { 
    path: '/tdeiadmin/temafile', 
    name:'temafile',
    component: () => import(/* webpackChunckName: "temafile" */ "./components/temafile/index.vue")
  },

  // Front
  { path: '/', component: index, name:'index'},
  { 
    path: '/baradafront', 
    name:'baradafront',
    component: () => import(/* webpackChunckName: "baradafront" */ "./components/front/baradafront.vue")
  },
  { 
    path: '/kafwebolfront', 
    name:'kafwebolfront',
    component: () => import(/* webpackChunckName: "kafwebolfront" */ "./components/front/kafwebolfront.vue")
  },
  { 
    path: '/ugurwehunfront', 
    name:'ugurwehunfront',
    component: () => import(/* webpackChunckName: "ugurwehunfront" */ "./components/front/ugurwehunfront.vue")
  },
  { 
    path: '/hyzmatdaslyk', 
    name:'hyzmatdaslykfront',
    component: () => import(/* webpackChunckName: "hyzmatdaslykfront" */ "./components/front/hyzmatdaslyklar.vue")
  },
  { 
    path: '/habarlasmak', 
    name:'habarlasmak',
    component: () => import(/* webpackChunckName: "habarlasmak" */ "./components/front/habarlasmak.vue")
  },
  { 
    path: '/ustunlik', 
    name:'ustunlik',
    component: () => import(/* webpackChunckName: "ustunlik" */ "./components/front/ustunlik.vue")
  },
  { 
    path: '/baslesik', 
    name:'baslesikfront',
    component: () => import(/* webpackChunckName: "baslesik" */ "./components/front/baslesik.vue")
  },
  { 
    path: '/eokuw', 
    name:'eokuwfront',
    component: () => import(/* webpackChunckName: "eokuwfront" */ "./components/front/eokuw.vue")
  },
  { 
    path: '/tazelikfront/:id', 
    name:'tazeliksingle',
    component: () => import(/* webpackChunckName: "tazeliksingle" */ "./components/front/tazeliksingle.vue")
  },
  { 
    path: '/kafwebolfront/:id', 
    name:'kafwebolfrontsingle',
    component: () => import(/* webpackChunckName: "kafwebolfrontsingle" */ "./components/front/kafwebolfrontsingle.vue")
  },
  { 
    path: '/ustunlik/:id', 
    name:'ustunlikfrontsingle',
    component: () => import(/* webpackChunckName: "ustunlikfrontsingle" */ "./components/front/ustunlikfrontsingle.vue")
  },
  { 
    path: '/baslesik/:id', 
    name:'baslesikfrontsingle',
    component: () => import(/* webpackChunckName: "baslesikfrontsingle" */ "./components/front/baslesikfrontsingle.vue")
  },
  { 
    path: '/dalasgar', 
    name:'dalasgarfront',
    component: () => import(/* webpackChunckName: "dalasgarfront" */ "./components/front/dalasgar.vue")
  },




]


