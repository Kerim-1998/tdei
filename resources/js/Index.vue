<template>
  <div>
    
    <div class="preloader">
        <div class="loader rubix-cube">
            <div class="layer layer-1"></div>
            <div class="layer layer-2"></div>
            <div class="layer layer-3 color-1"></div>
            <div class="layer layer-4"></div>
            <div class="layer layer-5"></div>
            <div class="layer layer-6"></div>
            <div class="layer layer-7"></div>
            <div class="layer layer-8"></div>
        </div>
    </div>
    
    
    <header id="header-part">
       
        <div class="header-top d-none d-md-block">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <div class="header-contact text-lg-left text-center">
                            <ul>
                                <li><img src="/front/images/all-icon/call.png" alt="icon"><span>+993 522 5-75-02</span></li>
                                <li><img src="/front/images/all-icon/email.png" alt="icon"><span>marytdei@online.tm</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="navigation navigation-2">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-lg-11 col-md-10 col-sm-9 col-9">
                        <nav class="navbar navbar-expand-lg" style="text-align: center;">
                            <a class="navbar-brand" href="/">
                                <img src="/front/images/logo.png" alt="Logo">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                <ul class="navbar-nav ml-auto">
                                    <li v-if="lang=='tm'" class="nav-item">
                                        <a href="/">
                                            Baş sahypa
                                        </a>
                                    </li>
                                    <li v-if="lang=='ru'" class="nav-item">
                                        <a href="/">
                                            Главная
                                        </a>
                                    </li>
                                    <li v-if="lang=='en'" class="nav-item">
                                        <a href="/">
                                            Home
                                        </a>
                                    </li>

                                    <li v-if="lang=='tm'" class="nav-item">
                                        <router-link to="/baradafront">Institut barada</router-link>
                                    </li>
                                    <li v-if="lang=='ru'" class="nav-item">
                                        <router-link to="/baradafront">О нас</router-link>
                                    </li>
                                    <li v-if="lang=='en'" class="nav-item">
                                        <router-link to="/baradafront">About institute</router-link>
                                    </li>

                                    <li v-if="lang=='tm'" class="nav-item"><router-link to="/kafwebolfront">
                                        Kafedralar we bölümler</router-link>
                                    </li>
                                    <li v-if="lang=='ru'" class="nav-item"><router-link to="/kafwebolfront">
                                        Кафедры и отделы</router-link>
                                    </li>
                                    <li v-if="lang=='en'" class="nav-item"><router-link to="/kafwebolfront">
                                        Departments and sections</router-link>
                                    </li>

                                    <li v-if="lang=='tm'" class="nav-item"><router-link to="/ugurwehunfront">
                                        Ugurlar we hünärler</router-link>
                                    </li>
                                    <li v-if="lang=='ru'" class="nav-item"><router-link to="/ugurwehunfront">
                                        Направления и специальности</router-link>
                                    </li>
                                    <li v-if="lang=='en'" class="nav-item"><router-link to="/ugurwehunfront">
                                        Areas and specialties</router-link>
                                    </li>
                                    
                                    <li v-if="lang=='tm'" class="nav-item"><router-link to="/hyzmatdaslyk">
                                        Hyzmatdaşlyklar we taslamalar</router-link>
                                    </li>
                                    <li v-if="lang=='ru'" class="nav-item"><router-link to="/hyzmatdaslyk">
                                        Сотрудничество и проекты</router-link>
                                    </li>
                                    <li v-if="lang=='en'" class="nav-item"><router-link to="/hyzmatdaslyk">
                                        Collaborations and projects</router-link>
                                    </li>

                                    <li v-if="lang=='tm'" class="nav-item"><router-link to="/habarlasmak">
                                        Habarlaşmak</router-link>
                                    </li>
                                    <li v-if="lang=='ru'" class="nav-item"><router-link to="/habarlasmak">
                                        Контакт</router-link>
                                    </li>
                                    <li v-if="lang=='en'" class="nav-item"><router-link to="/habarlasmak">
                                        Contact</router-link>
                                    </li>

                                    
                                    <li class="nav-item">
                                        <a v-if="lang=='tm'" href="#">Sahypalar</a>
                                        <a v-if="lang=='ru'" href="#">Страницы</a>
                                        <a v-if="lang=='en'" href="#">Pages</a>
                                        <ul class="sub-menu">
                                            <li v-if="lang=='tm'"><router-link to="/ustunlik">Üstünliklerimiz</router-link></li>
                                            <li v-if="lang=='ru'"><router-link to="/ustunlik">Наши успехи</router-link></li>
                                            <li v-if="lang=='en'"><router-link to="/ustunlik">Advantages</router-link></li>

                                            <li v-if="lang=='tm'"><router-link to="/dalasgar">Dalaşgärler üçin</router-link></li>
                                            <li v-if="lang=='ru'"><router-link to="/dalasgar">Кандидатам</router-link></li>
                                            <li v-if="lang=='en'"><router-link to="/dalasgar">For Candidates</router-link></li>

                                            <li v-if="lang=='tm'"><router-link to="/baslesik">Bäsleşikler</router-link></li>
                                            <li v-if="lang=='ru'"><router-link to="/baslesik">Соревнования</router-link></li>
                                            <li v-if="lang=='en'"><router-link to="/baslesik">Competitions</router-link></li>

                                            <li v-if="lang=='tm'"><router-link to="/eokuw">Elektron okuw</router-link></li>
                                            <li v-if="lang=='ru'"><router-link to="/eokuw">Электронное обучение</router-link></li>
                                            <li v-if="lang=='en'"><router-link to="/eokuw">E-learning</router-link></li>

                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a v-if="lang=='tm'" href="#">Dili</a>
                                        <a v-if="lang=='ru'" href="#">Язык</a>
                                        <a v-if="lang=='en'" href="#">Language</a>
                                        <ul class="sub-menu">
                                            <li @click="changeLangtotm"><a href="#">TM</a></li>
                                            <li @click="changeLangtoru"><a href="#">RU</a></li>
                                            <li @click="changeLangtoen"><a href="#">EN</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </nav> <!-- nav -->
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div>
        
    </header>
    
        <router-view></router-view>
    
    <!--====== FOOTER PART START ======-->
    
    <footer id="footer-part">
        <div class="footer-top pt-40 pb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-about mt-40">
                            <div class="logo">
                                <img src="/front/images/logo1.png" alt="Logo">
                            </div>
                            <p v-if="lang=='tm'">745400, Mary şäheriniň Baýramhan köçesiniň 62-nji jaýy</p>
                            <p v-if="lang=='ru'">745400, г.Мары, улица Байрамхана, дом 62</p>
                            <p v-if="lang=='en'">745400, Mary city, Bayramkhan str. 62</p>
                        </div> <!-- footer about -->
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer-link mt-40">
                            <div class="footer-title pb-25">
                                <h6 v-if="lang=='tm'">Gysga ýollar</h6>
                                <h6 v-if="lang=='ru'">Ссылки</h6>
                                <h6 v-if="lang=='en'">Links</h6>
                            </div>
                            <ul>
                                <li v-if="lang=='tm'" class="nav-item"><router-link to="/"><i class="fa fa-angle-right"></i>Baş sahypa</router-link></li>
                                <li v-if="lang=='ru'" class="nav-item"><router-link to="/"><i class="fa fa-angle-right"></i>Главная</router-link></li>
                                <li v-if="lang=='en'" class="nav-item"><router-link to="/"><i class="fa fa-angle-right"></i>Home</router-link></li>
                                <li v-if="lang=='tm'" class="nav-item"><router-link to="/baradafront"><i class="fa fa-angle-right"></i>Institut barada</router-link></li>
                                <li v-if="lang=='ru'" class="nav-item"><router-link to="/baradafront"><i class="fa fa-angle-right"></i>О нас</router-link></li>
                                <li v-if="lang=='en'" class="nav-item"><router-link to="/baradafront"><i class="fa fa-angle-right"></i>About institute</router-link></li>
                                <li v-if="lang=='tm'" class="nav-item"><router-link to="/kafwebolfront"><i class="fa fa-angle-right"></i>Kafedralar we bölümler</router-link></li>
                                <li v-if="lang=='ru'" class="nav-item"><router-link to="/kafwebolfront"><i class="fa fa-angle-right"></i>Кафедры и отделы</router-link></li>
                                <li v-if="lang=='en'" class="nav-item"><router-link to="/kafwebolfront"><i class="fa fa-angle-right"></i>Departments and sections</router-link></li>
                                <li v-if="lang=='tm'" class="nav-item"><router-link to="/ugurwehunfront"><i class="fa fa-angle-right"></i>Ugurlar we hünärler</router-link></li>
                                <li v-if="lang=='ru'" class="nav-item"><router-link to="/ugurwehunfront"><i class="fa fa-angle-right"></i>Направления и специальности</router-link></li>
                                <li v-if="lang=='en'" class="nav-item"><router-link to="/ugurwehunfront"><i class="fa fa-angle-right"></i>Areas and specialties</router-link></li>
                                <li v-if="lang=='tm'" class="nav-item"><router-link to="/hyzmatdaslyk"><i class="fa fa-angle-right"></i>Hyzmatdaşlyklar we taslamalar</router-link></li>
                                <li v-if="lang=='ru'" class="nav-item"><router-link to="/hyzmatdaslyk"><i class="fa fa-angle-right"></i>Сотрудничество и проекты</router-link></li>
                                <li v-if="lang=='en'" class="nav-item"><router-link to="/hyzmatdaslyk"><i class="fa fa-angle-right"></i>Collaborations and projects</router-link></li>
                            </ul>
                            <ul>
                                <li v-if="lang=='tm'" class="nav-item"><router-link to="/habarlasmak"><i class="fa fa-angle-right"></i>Habarlaşmak</router-link></li>
                                <li v-if="lang=='ru'" class="nav-item"><router-link to="/habarlasmak"><i class="fa fa-angle-right"></i>Контакт</router-link></li>
                                <li v-if="lang=='en'" class="nav-item"><router-link to="/habarlasmak"><i class="fa fa-angle-right"></i>Contact</router-link></li>

                                <li v-if="lang=='tm'"><router-link to="/ustunlik"><i class="fa fa-angle-right"></i>Üstünliklerimiz</router-link></li>
                                <li v-if="lang=='ru'"><router-link to="/ustunlik"><i class="fa fa-angle-right"></i>Наши успехи</router-link></li>
                                <li v-if="lang=='en'"><router-link to="/ustunlik"><i class="fa fa-angle-right"></i>Advantages</router-link></li>

                                <li v-if="lang=='tm'"><router-link to="/dalasgar"><i class="fa fa-angle-right"></i>Dalaşgärler üçin</router-link></li>
                                <li v-if="lang=='ru'"><router-link to="/dalasgar"><i class="fa fa-angle-right"></i>Кандидатам</router-link></li>
                                <li v-if="lang=='en'"><router-link to="/dalasgar"><i class="fa fa-angle-right"></i>For Candidates</router-link></li>

                                <li v-if="lang=='tm'"><router-link to="/baslesik"><i class="fa fa-angle-right"></i>Bäsleşikler</router-link></li>
                                <li v-if="lang=='ru'"><router-link to="/baslesik"><i class="fa fa-angle-right"></i>Соревнования</router-link></li>
                                <li v-if="lang=='en'"><router-link to="/baslesik"><i class="fa fa-angle-right"></i>Competitions</router-link></li>

                                <li v-if="lang=='tm'"><router-link to="/eokuw"><i class="fa fa-angle-right"></i>Elektron okuw</router-link></li>
                                <li v-if="lang=='ru'"><router-link to="/eokuw"><i class="fa fa-angle-right"></i>Электронное обучение</router-link></li>
                                <li v-if="lang=='en'"><router-link to="/eokuw"><i class="fa fa-angle-right"></i>E-learning</router-link></li>
                            </ul>
                        </div> <!-- footer link -->
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="footer-address mt-40">
                            <div class="footer-title pb-25">
                                <h6 v-if="lang=='tm'">Habarlaşmak üçin</h6>
                                <h6 v-if="lang=='ru'">Связываться</h6>
                                <h6 v-if="lang=='en'">To contact</h6>
                            </div>
                            <ul>
                                <li>
                                    <div class="icon">
                                        <i class="fa fa-home"></i>
                                    </div>
                                    <div class="cont">
                                        <p v-if="lang=='tm'">745400, Mary şäheriniň Baýramhan köçesiniň 62-nji jaýy</p>
                                        <p v-if="lang=='ru'">7245400, г. Мары, ул. Байрамхана, 62</p>
                                        <p v-if="lang=='en'">7245400, 62 Bayramhan Street, Mary</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <div class="cont">
                                        <p>+993 522 5-75-02</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i class="fa fa-envelope-o"></i>
                                    </div>
                                    <div class="cont">
                                        <p>marytdei@online.tm</p>
                                    </div>
                                </li>
                            </ul>
                        </div> <!-- footer address -->
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div> <!-- footer top -->
        
        <div class="footer-copyright pt-10 pb-25">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="copyright text-md-left text-center pt-15">
                            <p v-if="lang=='tm'"><a>2022 © Ähli hukuklary goragly</a> </p>
                            <p v-if="lang=='ru'"><a>2022 © Все права защищены</a> </p>
                            <p v-if="lang=='en'"><a>2022 © All rights reserved</a> </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="copyright text-md-right text-center pt-15">
                           
                        </div>
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div> <!-- footer copyright -->
    </footer>
    
   
    
    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>
    
   
  </div>
</template>

<script>
import {
    mapGetters,
    mapState
} from "vuex";
export default{
data(){
  return{
    loading:false,
  };
},
  computed: {
  ...mapGetters(["itemsInBasket"]),
  ...mapState({
      basket: state => state.basket.items,
      lang: state => state.lang.items[0].lang
        }),
    },
methods: {
  changeLangtotm(){
    this.$store.dispatch("clearLang");
    this.$store.dispatch("addToLang", {
        lang: 'tm',
      });
    Notification.successchangedlang();
  },
  changeLangtoru(){
    this.$store.dispatch("clearLang");
    this.$store.dispatch("addToLang", {
        lang: 'ru',
      });
    Notification.successchangedlang();
  },
  changeLangtoen(){
    this.$store.dispatch("clearLang");
    this.$store.dispatch("addToLang", {
        lang: 'en',
      });
    Notification.successchangedlang();
  },
},
created(){

},

}
</script>