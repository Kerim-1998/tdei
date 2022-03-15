<template id="">
  <div class="">
<carouselsmall v-bind="carouselsmall"></carouselsmall>
 
    <section id="event-singel" class="pt-50 pb-50 gray-bg">
        <div class="container">
            <div class="events-area">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="events-left">
                            <h3 v-if="lang=='tm'">{{kafwebolfront.kaf_at_tm}}</h3>
                            <h3 v-if="lang=='ru'">{{kafwebolfront.kaf_at_ru}}</h3>
                            <h3 v-if="lang=='en'">{{kafwebolfront.kaf_at_en}}</h3>
                            <div class="row">
                              <div class="col-lg-8 col-md-8">
                                <img :src="'/'+kafwebolfront.bol_photo">
                              </div>
                              <div class="col-lg-4 col-md-4" style="text-align: center;">
                               <div class="saidbar-post mt-30">
                                   
                                   <ul>
                                       <li>
                                            <router-link :to="{name: 'kafmugfront', params:{ id:kafwebolfront.id }}">
                                            <h4>Kafedranyň mugallymlary</h4>
                                                <div class="singel-post">
                                                   <div class="thum">
                                                       <img src="/front/images/all-icon/infor.png">
                                                   </div>
                                               </div> <!-- singel post -->
                                            </router-link>
                                       </li>
                                   </ul>
                               </div> <!-- saidbar post -->
                           </div>
                            </div>
                            
                            <div v-if="lang=='tm'" v-html="kafwebolfront.dusundiris_tm"></div>
                            <div v-if="lang=='ru'" v-html="kafwebolfront.dusundiris_ru"></div>
                            <div v-if="lang=='en'" v-html="kafwebolfront.dusundiris_en"></div>
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
        carouselsmall_tm: 'KAFEDRA',
        carouselsmall_ru: 'ОТДЕЛЕНИЕ',
        carouselsmall_en: 'DEPARTMENT',
      },
      kafwebolfront: '',
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
    .get('/api/kafwebolfront/' + this.$route.params.id)
    .then(response=>{
      this.kafwebolfront = response.data.data;
      this.loading=false;
    });
  },


}
</script>
