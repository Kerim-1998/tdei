<template>
<div>
	    <section id="teachers-page" class="pt-50 pb-50 gray-bg">
        <div class="container">
        <div v-for="yarys in yaryss" :key="yarys.id">
        	
        
        <h3 v-if="lang=='tm'" class="pt-100">{{yarys.yarys_at_tm}}</h3>
        <h3 v-if="lang=='ru'" class="pt-100">{{yarys.yarys_at_ru}}</h3>
        <h3 v-if="lang=='en'" class="pt-100">{{yarys.yarys_at_en}}</h3>
           <div class="row">
           		
               <div v-for="talyp in talyps" :key="talyp.id" v-if="yarys.id==talyp.yarys_id" class="col-lg-4 col-sm-6">
                   <div class="singel-teachers mt-30 text-center">
                        <div class="image">
                            <img :src="'/'+talyp.photo">
                        </div>
                        <div class="cont">
                            <h6 v-if="lang=='tm'">{{talyp.at_tm}}</h6>
                            <h6 v-if="lang=='ru'">{{talyp.at_ru}}</h6>
                            <h6 v-if="lang=='en'">{{talyp.at_en}}</h6>
                            <div v-if="lang=='tm'">
	                            <span>{{talyp.kurs_tm}}</span><br>	
                            </div>
                            <div v-if="lang=='ru'">
	                            <span>{{talyp.kurs_ru}}</span><br>	
                            </div>
                            <div v-if="lang=='en'">
	                            <span>{{talyp.kurs_en}}</span><br>	
                            </div>
                            
                            <span v-if="lang=='tm'">{{talyp.ders_tm}}</span>
                            <span v-if="lang=='ru'">{{talyp.ders_ru}}</span>
                            <span v-if="lang=='en'">{{talyp.ders_en}}</span>
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
      yaryss: null,
      loading:false,
      loadingfortalyps:false,
      talyps:null,
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
    .get('/api/yarysfront')
    .then(response=>{
      this.yaryss = response.data.data;
      this.loading=false;
    });
    this.loadingfortalyps = true;
    axios
    .get('/api/talypfront')
    .then(response=>{
      this.talyps = response.data.data;
      this.loadingfortalyps=false;
    });
  },

}
</script>

