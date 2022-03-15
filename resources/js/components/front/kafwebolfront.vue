<template>
	<div>
		<carouselsmall v-bind="carouselsmall"></carouselsmall>
    	<section id="courses-part" class="pt-20 pb-50 gray-bg">
        <div class="container">
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="courses-grid" role="tabpanel" aria-labelledby="courses-grid-tab">
                    <div class="row">

                        <div v-for="kafwewbol in kafwewbols" :key="kafwewbol.id" class="col-lg-4 col-md-6">
                            <div class="singel-course mt-30">
                                <div class="thum">
                                    <div class="image">
                                        <img :src="'/'+kafwewbol.kaf_photo">
                                    </div>
                                </div>
                                <div class="cont">
                                    <router-link :to="{name: 'kafwebolfrontsingle', params:{ id:kafwewbol.id }}">
                                    <h4 v-if="lang=='tm'">{{kafwewbol.kaf_at_tm}}</h4>
                                    <h4 v-if="lang=='ru'">{{kafwewbol.kaf_at_ru}}</h4>
                                    <h4 v-if="lang=='en'">{{kafwewbol.kaf_at_en}}</h4>
                                    </router-link>

                                    <div class="course-teacher">
                                        <div class="name">
                                            <router-link :to="{name: 'kafwebolfrontsingle', params:{ id:kafwewbol.id }}">
                                            <h6 v-if="lang=='tm'">{{kafwewbol.gysga_text_tm}}</h6>
                                            <h6 v-if="lang=='ru'">{{kafwewbol.gysga_text_ru}}</h6>
                                            <h6 v-if="lang=='en'">{{kafwewbol.gysga_text_en}}</h6>  
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
        carouselsmall_tm: 'KAFEDRALAR',
        carouselsmall_ru: 'ОТДЕЛЫ',
        carouselsmall_en: 'DEPARTMENTS',
      },
      loading:false,
      kafwewbols:null,
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
    .get('/api/kafwebolfront')
    .then(response=>{
      this.kafwewbols = response.data.data;
      this.loading=false;
    });
  },


}
</script>
