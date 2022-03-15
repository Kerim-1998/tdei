<template>
<div>
    

    <section id="news-part" class="pt-50 pb-110">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title pb-50">
                        <h2 v-if="lang=='tm'">Täzelikler we makalalar</h2>
                        <h2 v-if="lang=='ru'">Новости и статьи</h2>
                        <h2 v-if="lang=='en'">News and articles</h2>

                        <h5 v-if="lang=='tm'">Elektroenergetika ulgamyna degişli möhüm wakalar, täzelikler we dürli makalalar</h5>
                        <h5 v-if="lang=='ru'">Важные события, новости и статьи в сфере электроэнергетики</h5>
                        <h5 v-if="lang=='en'">Important events, news and articles in the energy sector</h5>
                    </div> <!-- section title -->
                </div>
            </div> <!-- row -->
            <div class="row">

                <div v-for="tazelik in tazeliks" :key="tazelik.id" class="col-lg-6">
                    <div class="singel-news news-list">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="news-thum mt-30">
                                    <img :src="'/'+tazelik.photo">
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="news-cont mt-30">
                                    <ul>
                                        <li><i class="fa fa-calendar"></i>  {{tazelik.gun}}/{{tazelik.ay}}/{{tazelik.yyl}}</li>
                                    </ul>
                                    <router-link :to="{name: 'tazeliksingle', params:{ id:tazelik.id }}">
                                    <h3 v-if="lang=='tm'">{{tazelik.tema_tm}}</h3>
                                    <h3 v-if="lang=='ru'">{{tazelik.tema_ru}}</h3>
                                    <h3 v-if="lang=='en'">{{tazelik.tema_en}}</h3>
                                    </router-link>
                                    <p v-if="lang=='tm'">{{tazelik.dusundiris_tm}}</p>
                                    <p v-if="lang=='ru'">{{tazelik.dusundiris_ru}}</p>
                                    <p v-if="lang=='en'">{{tazelik.dusundiris_en}}</p>
                                </div>
                            </div>
                        </div> <!-- row -->
                    </div> <!-- singel news -->
                </div>

                
            </div> <!-- row -->

        </div> <!-- container -->
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
      loading:false,
      tazeliks:null,
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
    .get('/api/tazelikfront')
    .then(response=>{
      this.tazeliks = response.data.data;
      this.loading=false;
    });
  },


}
</script>



