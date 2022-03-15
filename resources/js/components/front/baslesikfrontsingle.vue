<template id="">
  <div class="">
<carouselsmall v-bind="carouselsmall"></carouselsmall>

    <section id="event-singel" class="pt-50 pb-50 gray-bg">
        <div class="container">
            <div class="events-area">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="events-left">
                            <h3 v-if="lang=='tm'">{{baslesikfront.at_tm}}</h3>
                            <h3 v-if="lang=='ru'">{{baslesikfront.at_ru}}</h3>
                            <h3 v-if="lang=='en'">{{baslesikfront.at_en}}</h3>
                            <br>
                           <div v-if="lang=='tm'" v-html="baslesikfront.dusundiris_tm"></div>
                           <div v-if="lang=='ru'" v-html="baslesikfront.dusundiris_ru"></div>
                           <div v-if="lang=='en'" v-html="baslesikfront.dusundiris_en"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        carouselsmall_tm: 'BÄSLEŞIK',
        carouselsmall_ru: 'КОНКУРЕНЦИЯ',
        carouselsmall_en: 'COMPETITION',
      },
      baslesikfront: '',
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
    .get('/api/baslesikfront/' + this.$route.params.id)
    .then(response=>{
      this.baslesikfront = response.data.data;
      this.loading=false;
    });
  },


}
</script>
