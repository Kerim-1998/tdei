<template>
<div>
  
    <section id="blog-singel" class="pt-50 pb-50 gray-bg">
        <div class="container">
           <div class="row">
              <div class="col-lg-12">
                  <div class="blog-details mt-30">
                      <div class="cont">
                           <div  class="blog-comment pt-45">
                               <div style="text-align: center;" class="title pb-15">
                                   <h3 v-if="lang=='tm'">Üstünliklerimiz</h3>
                                   <h3 v-if="lang=='ru'">Наши успехи</h3>
                                   <h3 v-if="lang=='en'">Our successes</h3>
                               </div>

                               <div v-for="olimp in olimps" :key="olimp.id">
                                <div style="text-align: center;" class="comment-description pt-20">
                                  <p v-if="lang=='tm'">{{olimp.olimp_at_tm}}</p>
                                  <p v-if="lang=='ru'">{{olimp.olimp_at_ru}}</p>
                                  <p v-if="lang=='en'">{{olimp.olimp_at_en}}</p>
                                </div>

                                <ul>
                                   <li>

                                        <div v-for="yeniji in yenijis" :key="yeniji.id" v-if="olimp.id==yeniji.olimp_id" class="comment">
                                            <div class="comment-author">
                                                <div class="author-thum">
                                                   <img :src="'/'+yeniji.photo">
                                                </div>
                                                <div class="comment-name">
                                                    <h6 v-if="lang=='tm'">{{yeniji.talyp_at_tm}}</h6>
                                                    <h6 v-if="lang=='ru'">{{yeniji.talyp_at_ru}}</h6>
                                                    <h6 v-if="lang=='en'">{{yeniji.talyp_at_en}}</h6>
                                                </div>
                                                <div class="comment-name">
                                                    <h6 v-if="lang=='tm'">{{yeniji.ders_tm}}</h6>
                                                    <h6 v-if="lang=='ru'">{{yeniji.ders_ru}}</h6>
                                                    <h6 v-if="lang=='en'">{{yeniji.ders_en}}</h6>
                                                </div>
                                                <div class="comment-name">
                                                    <h6 v-if="lang=='tm'">{{yeniji.orun_tm}}</h6>
                                                    <h6 v-if="lang=='ru'">{{yeniji.orun_ru}}</h6>
                                                    <h6 v-if="lang=='en'">{{yeniji.orun_en}}</h6>
                                                </div>
                                            </div>
                                        </div> <!-- comment -->

                                   </li>
                               </ul>
                               
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
import {
    mapGetters,
    mapState
} from "vuex";
export default{
  data(){
    return{
      olimps: null,
      loading:false,
      loadingforyenijis:false,
      yenijis:null,
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
    .get('/api/olimpfront')
    .then(response=>{
      this.olimps = response.data.data;
      this.loading=false;
    });
    this.loadingforyenijis = true;
    axios
    .get('/api/yenijifront')
    .then(response=>{
      this.yenijis = response.data.data;
      this.loadingforyenijis=false;
    });
  },

}
</script>

