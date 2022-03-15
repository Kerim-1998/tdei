<template>
<div>
<carouselsmall v-bind="carouselsmall"></carouselsmall>


	    <section id="event-singel" class="pt-20 pb-50 gray-bg">
        <div class="container">
            <div class="events-area">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="events-left">
                            <h3 v-if="lang=='tm'">Türkmenistanyň Döwlet energetika instituty</h3>
                            <h3 v-if="lang=='ru'">Государственный энергетический институт Туркменистана</h3>
                            <h3 v-if="lang=='en'">The State Energy Institute of Turkmenistan</h3>
                           <br>

                            <div v-for="ugur in ugurs"  :key="ugur.id">
                            	<h5 v-if="lang=='tm'">{{ugur.ugur_at_tm}}</h5>
                            	<h5 v-if="lang=='ru'">{{ugur.ugur_at_ru}}</h5>
                            	<h5 v-if="lang=='en'">{{ugur.ugur_at_en}}</h5>
                            	<div v-for="file in files"  :key="file.id" v-if="ugur.id==file.ugur_id">
	                        		<a :href="file.file" >
	                        		<p v-if="lang=='tm'"><img src="/front/images/word.png" style="margin-top: 0px;">{{file.file_at_tm}}</p>
	                        		<p v-if="lang=='ru'"><img src="/front/images/word.png" style="margin-top: 0px;">{{file.file_at_ru}}</p>
	                        		<p v-if="lang=='en'"><img src="/front/images/word.png" style="margin-top: 0px;">{{file.file_at_en}}</p>
	                        		</a>
                            	</div>
                            	<br>
                            </div>
                            
                            
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
        carouselsmall_tm: 'UGURLAR WE HÜNÄRLER',
        carouselsmall_ru: 'НАПРАВЛЕНИЯ И СПЕЦИАЛЬНОСТИ',
        carouselsmall_en: 'AREAS AND SPECIALTIES',
      },
      ugurs: null,
      loading:false,
      loadingforfiles:false,
      files:null,
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
    .get('/api/ugurfront')
    .then(response=>{
      this.ugurs = response.data.data;
      this.loading=false;
    });
    this.loadingforfiles = true;
    axios
    .get('/api/filefront')
    .then(response=>{
      this.files = response.data.data;
      this.loadingforfiles=false;
    });
  },

}
</script>

