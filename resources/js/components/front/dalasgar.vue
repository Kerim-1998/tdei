<template>
	<div>
		<carouselsmall v-bind="carouselsmall"></carouselsmall>
		<section id="about-page" class="pt-20 pb-10">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title mt-50">
                        <h5 v-if="lang=='tm'">DALAŞGÄRLER ÜÇIN</h5>
                        <h5 v-if="lang=='ru'">ДЛЯ КАНДИДАТОВ</h5>
                        <h5 v-if="lang=='en'">FOR CANDIDATES</h5>
                    </div>
                    <div class="about-cont">
                        <div v-if="lang=='tm'" v-html="dalasgarfront.dusundiris_tm"></div>
                        <div v-if="lang=='ru'" v-html="dalasgarfront.dusundiris_ru"></div>
                        <div v-if="lang=='en'" v-html="dalasgarfront.dusundiris_en"></div>
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
        carouselsmall_tm: 'DALAŞGÄRLER ÜÇIN',
        carouselsmall_ru: 'ДЛЯ КАНДИДАТОВ',
        carouselsmall_en: 'FOR CANDIDATES',
      },
      dalasgarfront: '',
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
    .get('/api/dalasgarfront')
    .then(response=>{
      this.dalasgarfront = response.data.data;
      this.loading=false;
    });
  },


}
</script>
