<template id="">
  <div class="">
<carouselsmall v-bind="carouselsmall"></carouselsmall>

    <section id="event-singel" class="pt-50 pb-50 gray-bg">
        <div class="container">
            <div class="events-area">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="events-left">
                            <h3 v-if="lang=='tm'">{{ustunlikfront.patent_ady_tm}}</h3>
                            <h3 v-if="lang=='ru'">{{ustunlikfront.patent_ady_ru}}</h3>
                            <h3 v-if="lang=='en'">{{ustunlikfront.patent_ady_en}}</h3>
                            <div v-if="lang=='tm'" v-html="ustunlikfront.dusundiris_tm"></div>
                            <div v-if="lang=='ru'" v-html="ustunlikfront.dusundiris_ru"></div>
                            <div v-if="lang=='en'" v-html="ustunlikfront.dusundiris_en"></div>
                            <img style="width:500px;" :src="'/'+ustunlikfront.patent_photo1">
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
        carouselsmall_tm: 'ÜSTÜNLIK',
        carouselsmall_ru: 'НАШ УСПЕХ',
        carouselsmall_en: 'ADVANTAGE',
      },
      ustunlikfront: '',
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
    .get('/api/mustunfront/' + this.$route.params.id)
    .then(response=>{
      this.ustunlikfront = response.data.data;
      this.loading=false;
    });
  },


}
</script>
