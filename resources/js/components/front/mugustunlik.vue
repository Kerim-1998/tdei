<template>
<div>
	 <section id="courses-part" class="pt-60 pb-30 gray-bg">
        <div class="container">
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="courses-grid" role="tabpanel" aria-labelledby="courses-grid-tab">
              <div class="title pb-15" style="text-align: center;">
                   <h3 v-if="lang=='tm'">Mugallymlarymyzyň üstünlikleri</h3>
                   <h3 v-if="lang=='ru'">Достижения наших учителей</h3>
                   <h3 v-if="lang=='en'">Achievements of our teachers</h3>
                   <h5 v-if="lang=='tm'">Alnan patentler we gazanylan dürli üstünlikler</h5>
                   <h5 v-if="lang=='ru'">Полученные патенты и различные достижения</h5>
                   <h5 v-if="lang=='en'">Patents received and various achievements</h5>
               </div> 
                    <div class="row">


                        <div v-for="mustun in mustuns" :key="mustun.id" class="col-lg-4 col-md-6">
                            <div class="singel-course mt-30">
                                <div class="thum">
                                    <div class="image">
                                        <img :src="'/'+mustun.patent_photo">
                                    </div>
                                </div>
                                <div class="cont">
                                    <div class="course-teacher">
                                        <div class="name pt-10">
                                            <router-link :to="{name: 'ustunlikfrontsingle', params:{ id:mustun.id }}">
                                            <h6 v-if="lang=='tm'">{{mustun.patent_ady_tm}}</h6>
                                            <h6 v-if="lang=='ru'">{{mustun.patent_ady_ru}}</h6>
                                            <h6 v-if="lang=='en'">{{mustun.patent_ady_en}}</h6>
                                            </router-link>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="name pt-10">
                                            <router-link :to="{name: 'ustunlikfrontsingle', params:{ id:mustun.id }}">
                                            <h6 v-if="lang=='tm'">{{mustun.mug_ady_tm}}</h6>
                                            <h6 v-if="lang=='ru'">{{mustun.mug_ady_ru}}</h6>
                                            <h6 v-if="lang=='en'">{{mustun.mug_ady_en}}</h6>
                                            </router-link>
                                        </div>
                                        <div class="name pt-10">
                                            <router-link :to="{name: 'ustunlikfrontsingle', params:{ id:mustun.id }}">
                                            <h6 v-if="lang=='tm'" style="font-size: 12px;">{{mustun.mug_ady_tm}}</h6>
                                            <h6 v-if="lang=='ru'" style="font-size: 12px;">{{mustun.mug_ady_ru}}</h6>
                                            <h6 v-if="lang=='en'" style="font-size: 12px;">{{mustun.mug_ady_en}}</h6>
                                            </router-link>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- singel course -->
                        </div>

                    </div> <!-- row -->
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
      loading:false,
      mustuns:null,
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
    .get('/api/mustunfront')
    .then(response=>{
      this.mustuns = response.data.data;
      this.loading=false;
    });
  },


}
</script>
