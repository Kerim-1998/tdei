<template>
<div>
<carouselsmall v-bind="carouselsmall"></carouselsmall>
	    <section id="corses-singel" class="pt-50 pb-50 gray-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="corses-singel-left mt-30">
                     <h3 v-if="lang=='tm'">Bäsleşikler</h3>
                     <h3 v-if="lang=='ru'">Соревнования</h3>
                     <h3 v-if="lang=='en'">Competitions</h3>
                        
                        <div class="corses-tab mt-30">
                            <ul class="nav nav-justified" id="myTab" role="tablist">

                                <li v-for="yyl in yyls" :key="yyl.id" class="nav-item">
                                    <a id="overview-tab" data-toggle="tab" :href="'#salam'+yyl.id" role="tab" aria-controls="overview" aria-selected="true">{{yyl.yyl}}</a>
                                </li>

                            </ul>
                            
                            <div class="tab-content" id="myTabContent">
	                            
	                            	<div v-for="yyl in yyls" :key="yyl.id" class="tab-pane fade" :id="'salam'+yyl.id" role="tabpanel" aria-labelledby="overview-tab">
	                                    <div v-for="baslesik in baslesiks" :key="baslesik.id" v-if="baslesik.yyl_id == yyl.id"  class="overview-description">
	                                        <div class="singel-description pt-40">
	                                        <router-link :to="{name: 'baslesikfrontsingle', params:{ id:baslesik.id }}">
	                                            <h6 v-if="lang=='tm'">*  {{baslesik.at_tm}}</h6>
	                                            <h6 v-if="lang=='ru'">*  {{baslesik.at_ru}}</h6>
	                                            <h6 v-if="lang=='en'">*  {{baslesik.at_en}}</h6>
	                                        </router-link>
	                                        </div>
	                                    </div>
	                                </div>
                                
                            </div>
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
        carouselsmall_tm: 'BÄSLEŞIKLER',
        carouselsmall_ru: 'СОРЕВНОВАНИЯ',
        carouselsmall_en: 'COMPETITIONS',
      },
      yyls: null,
      loading:false,
      loadingforbaslesiks:false,
      baslesiks:null,
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
    .get('/api/yylfront')
    .then(response=>{
      this.yyls = response.data.data;
      this.loading=false;
    });
    this.loadingforbaslesiks = true;
    axios
    .get('/api/baslesikfront')
    .then(response=>{
      this.baslesiks = response.data.data;
      this.loadingforbaslesiks=false;
    });
  },

}
</script>

