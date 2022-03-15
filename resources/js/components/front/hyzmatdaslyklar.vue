<template>
<div>
<carouselsmall v-bind="carouselsmall"></carouselsmall>


     <section id="courses-part" class="pt-20 pb-50 gray-bg">
        <div class="container">
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="courses-grid" role="tabpanel" aria-labelledby="courses-grid-tab">
                    <div class="row">

                        <div v-for="hyzmat in hyzmats" :key="hyzmat.id" class="col-lg-4 col-md-6">
                            <div class="singel-course mt-30">
                                <div class="thum">
                                    <div class="image">
                                        <img :src="'/'+hyzmat.photo">
                                    </div>
                                </div>
                                <div class="cont">
                                    <div class="course-teacher">
                                        <div class="name">
                                            <a :href="hyzmat.link">
                                                <h6 v-if="lang=='tm'">{{hyzmat.hyz_at_tm}}</h6>
                                                <h6 v-if="lang=='ru'">{{hyzmat.hyz_at_ru}}</h6>
                                                <h6 v-if="lang=='en'">{{hyzmat.hyz_at_en}}</h6>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="course-teacher">
                                        <div class="name">
                                          <a :href="hyzmat.link">
                                            <button v-if="lang=='tm'" class="btn btn-success">Resmi sahypasy</button>
                                            <button v-if="lang=='ru'" class="btn btn-success">Войти сайт</button>
                                            <button v-if="lang=='en'" class="btn btn-success">Visit site</button>
                                          </a>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- singel course -->
                        </div>

                    

                    </div>
                </div>
            </div> <!-- tab content -->
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
        carouselsmall_tm: 'HYZMATDAŞLYKLAR',
        carouselsmall_ru: 'СОТРУДНИЧЕСТВО',
        carouselsmall_en: 'COOPERATION',
      },
      loading:false,
      hyzmats:null,
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
    .get('/api/hyzmatfront')
    .then(response=>{
      this.hyzmats = response.data.data;
      this.loading=false;
    });
  },


}
</script>
