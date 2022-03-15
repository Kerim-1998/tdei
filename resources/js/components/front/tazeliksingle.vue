<template id="">
  <div class="">
<carouselsmall v-bind="carouselsmall"></carouselsmall>

    <section id="event-singel" class="pt-50 pb-50 gray-bg">
        <div class="container">
            <div class="events-area">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="events-left">
                            <h3 v-if="lang=='tm'">{{tazelikfront.tema_tm}}</h3>
                            <h3 v-if="lang=='ru'">{{tazelikfront.tema_ru}}</h3>
                            <h3 v-if="lang=='en'">{{tazelikfront.tema_en}}</h3>
                            <a href="#"><span><i class="fa fa-calendar"></i> {{tazelikfront.gun}}/{{tazelikfront.ay}}/{{tazelikfront.yyl}}</span></a>
                            <img :src="'/'+tazelikfront.photo">
                            <p v-if="lang=='tm'">{{tazelikfront.tazelik_tm}}</p>
                            <p v-if="lang=='ru'">{{tazelikfront.tazelik_ru}}</p>
                            <p v-if="lang=='en'">{{tazelikfront.tazelik_en}}</p>
                        </div> <!-- events left -->
                    </div>
                </div> <!-- row -->
            </div> <!-- events-area -->
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
export default{
	components:{
      carouselsmall,
    },

  data(){
    return{
    carouselsmall:{
        carouselsmall_tm: 'TÄZELIK',
        carouselsmall_ru: 'НОВОСТ',
        carouselsmall_en: 'NEW',
      },
      tazelikfront: '',
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
  created(){
    this.loading = true;
    axios
    .get('/api/tazelikfront/' + this.$route.params.id)
    .then(response=>{
      this.tazelikfront = response.data.data;
      this.loading=false;
    });
  },


}
</script>
