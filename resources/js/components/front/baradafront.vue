<template>
	<div>
		<carouselsmall v-bind="carouselsmall"></carouselsmall>
		<section id="about-page" class="pt-20 pb-10">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="about-image mt-50">
                        <img :src="'/'+baradafront.photo">
                    </div>  <!-- about imag -->
                </div> 
                <div class="col-lg-12">
                    <div class="section-title mt-50">
                        <h5 v-if="lang=='tm'">Institut barada</h5>
                        <h5 v-if="lang=='ru'">О НАС</h5>
                        <h5 v-if="lang=='en'">ABOUT INSTITUTE</h5>
                        <h2 v-if="lang=='tm'">{{baradafront.tema_tm}}</h2>
                        <h2 v-if="lang=='ru'">{{baradafront.tema_ru}}</h2>
                        <h2 v-if="lang=='en'">{{baradafront.tema_en}}</h2>
                    </div> <!-- section title -->
                    <div class="about-cont">
                        <div v-if="lang=='tm'" v-html="baradafront.dusundiris_tm"></div>
                        <div v-if="lang=='ru'" v-html="baradafront.dusundiris_ru"></div>
                        <div v-if="lang=='en'" v-html="baradafront.dusundiris_en"></div>
                    </div>
                </div> <!-- about cont -->
                
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
export default{
    components:{
      carouselsmall,
    },

  data(){
    return{
      carouselsmall:{
        carouselsmall_tm: 'INSTITUT BARADA',
        carouselsmall_ru: 'О НАС',
        carouselsmall_en: 'ABOUT INSTITUTE',
      },
      baradafront: '',
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
    .get('/api/baradafront')
    .then(response=>{
      this.baradafront = response.data.data;
      this.loading=false;
    });
  },


}
</script>
