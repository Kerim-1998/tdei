<template>
	<div>
		<carouselsmall v-bind="carouselsmall"></carouselsmall>

    <section id="contact-page" class="pt-90 pb-120 gray-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="contact-from mt-30">
                        <div class="section-title">

                            <h5 v-if="lang=='tm'">Biz bilen habarlaşyň</h5>
                            <h5 v-if="lang=='ru'">Связаться с нами</h5>
                            <h5 v-if="lang=='en'">Contact Us</h5>

                            <h2 v-if="lang=='tm'">Aragatnaşykda boluň</h2>
                            <h2 v-if="lang=='ru'">Поддерживать связь</h2>
                            <h2 v-if="lang=='en'">Keep in touch</h2>
                        </div> <!-- section title -->
                        <div class="main-form pt-45">

                            <form id="contact-form" data-toggle="validator" @submit.prevent="habarInsert">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="singel-form form-group">
                                            <input v-if="lang=='tm'" name="name" type="text" placeholder="Adyňyz" data-error="Adyňyzy ýazmaly" required="required" v-model="form.at">

                                            <input v-if="lang=='ru'" name="name" type="text" placeholder="Ваше имя" data-error="Требуется имя." required="required" v-model="form.at">

                                            <input v-if="lang=='en'" name="name" type="text" placeholder="Your name" data-error="Name is required." required="required" v-model="form.at">

                                            <div class="help-block with-errors"></div>
                                        </div> <!-- singel form -->
                                    </div>

                                    <div class="col-md-6">
                                        <div class="singel-form form-group">
                                            <input v-if="lang=='tm'" name="email" type="email" placeholder="E-poçta" data-error="Dogry e-poçta talap edilýär." required="required" v-model="form.email">

                                            <input v-if="lang=='ru'" name="email" type="email" placeholder="Эл. адрес" data-error="Требуется действительный адрес электронной почты." required="required" v-model="form.email">

                                            <input v-if="lang=='en'" name="email" type="email" placeholder="Email" data-error="Valid email is required." required="required" v-model="form.email">
                                            <div class="help-block with-errors"></div>
                                        </div> <!-- singel form -->
                                    </div>
                                    <div class="col-md-6">
                                        <div class="singel-form form-group">
                                            <input v-if="lang=='tm'" name="subject" type="text" placeholder="Tema" data-error="Mowzuk hökmany." required="required" v-model="form.tema">

                                            <input v-if="lang=='ru'" name="subject" type="text" placeholder="Тема" data-error="Тема обязательна." required="required" v-model="form.tema">

                                            <input v-if="lang=='en'" name="subject" type="text" placeholder="Subject" data-error="Subject is required." required="required" v-model="form.tema">

                                            <div class="help-block with-errors"></div>
                                        </div> <!-- singel form --> 
                                    </div>
                                    <div class="col-md-6">
                                        <div class="singel-form form-group">
                                            <input v-if="lang=='tm'" name="phone" type="text" placeholder="Phone" data-error="Telefon nomer gerek" required="required" v-model="form.phone">

                                            <input v-if="lang=='ru'" name="phone" type="text" placeholder="Phone" data-error="Требуется телефон." required="required" v-model="form.phone">

                                            <input v-if="lang=='en'" name="phone" type="text" placeholder="Phone" data-error="Phone is required." required="required" v-model="form.phone">

                                            <div class="help-block with-errors"></div>
                                        </div> <!-- singel form -->
                                    </div>
                                    <div class="col-md-12">
                                        <div class="singel-form form-group">
                                            <textarea v-if="lang=='tm'" name="messege" placeholder="Habar" data-error="Haýyş edýäris, bize habar iberiň." required="required" v-model="form.message"></textarea>

                                            <textarea v-if="lang=='ru'" name="messege" placeholder="Сообщение" data-error="Пожалуйста, оставьте нам сообщение." required="required" v-model="form.message"></textarea>

                                            <textarea v-if="lang=='en'" name="messege" placeholder="Message" data-error="Please,leave us a message." required="required" v-model="form.message"></textarea>

                                            <div class="help-block with-errors"></div>
                                        </div> <!-- singel form -->
                                    </div>
                                    <p class="form-message"></p>
                                    <div class="col-md-12">
                                        <div class="singel-form">
                                            <button v-if="lang=='tm'" type="submit" class="main-btn">Iber</button>
                                            <button v-if="lang=='ru'" type="submit" class="main-btn">Отправлять</button>
                                            <button v-if="lang=='en'" type="submit" class="main-btn">Send</button>
                                        </div> <!-- singel form -->
                                    </div> 
                                </div> <!-- row -->





                            </form>
                        </div> <!-- main form -->
                    </div> <!--  contact from -->
                </div>
                <div class="col-lg-5">
                    <div class="contact-address mt-30">
                        <ul>
                            <li>
                                <div class="singel-address">
                                    <div class="icon">
                                        <i class="fa fa-home"></i>
                                    </div>
                                    <div class="cont">
                                        <p v-if="lang=='tm'">745400, Mary şäheriniň Baýramhan köçesiniň 62-nji jaýy</p>

                                        <p v-if="lang=='ru'">745400, г.Мары, улица Байрамхана, дом 62</p>

                                        <p v-if="lang=='en'">745400, Mary city, Bayramkhan str. 62</p>
                                    </div>
                                </div> <!-- singel address -->
                            </li>
                            <li>
                                <div class="singel-address">
                                    <div class="icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <div class="cont">
                                        <p>+993 522 5-75-02</p>
                                    </div>
                                </div> <!-- singel address -->
                            </li>
                            <li>
                                <div class="singel-address">
                                    <div class="icon">
                                        <i class="fa fa-envelope-o"></i>
                                    </div>
                                    <div class="cont">
                                        <p>marytdei@online.tm</p>
                                    </div>
                                </div> <!-- singel address -->
                            </li>
                        </ul>
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>
    	
	</div>
	
</template>


<script>
import carouselsmall from "./carouselsmall";
import {
    mapGetters,
    mapState
} from "vuex";
  export default {
    components:{
      carouselsmall,
    },

    data(){
    return {
    carouselsmall:{
        carouselsmall_tm: 'HABARLAŞMAK',
        carouselsmall_ru: 'КОНТАКТ',
        carouselsmall_en: 'CONTACT',
      },
      form:{
        at: null,
        email: null,
        tema: null,
        phone: null,
        message: null
      },
      errors:{}
    }
  },
    computed: {
  ...mapGetters(["itemsInBasket"]),
  ...mapState({
      basket: state => state.basket.items,
      lang: state => state.lang.items[0].lang
        }),
    },

  methods:{
  habarInsert(){
       axios.post('/api/habar',this.form)
       .then(() => {
        this.$router.push({ name: 'baradafront'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  }


  }

</script>
