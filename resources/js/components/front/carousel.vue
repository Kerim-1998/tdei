<template>
<div>
    
    <section id="slider-part" class="slider-active">

      <div class="single-slider bg_cover pt-150" style="background-image: url(front/images/slider/s-1.jpg)" data-overlay="4">
        <div class="container">
          <div class="row">
            <div class="col-xl-7 col-lg-9">
              <div class="slider-cont">
                <h1 v-if="lang=='tm'" data-animation="bounceInLeft" data-delay="1s">Döwlet adam üçindir</h1>
                <h1 v-if="lang=='ru'" data-animation="bounceInLeft" data-delay="1s">Государство для человека</h1>
                <h1 v-if="lang=='en'" data-animation="bounceInLeft" data-delay="1s">State for man</h1>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="single-slider bg_cover pt-150" style="background-image: url(front/images/slider/s-2.jpg)" data-overlay="4">
        <div class="container">
          <div class="row">
            <div class="col-xl-7 col-lg-9">
              <div class="slider-cont">
                <h1 v-if="lang=='tm'" data-animation="bounceInLeft" data-delay="1s">Energetika döwlet ösüşlerimiziň binýadydyr</h1>
                <h1 v-if="lang=='ru'" data-animation="bounceInLeft" data-delay="1s">Энергетика - крепкая основа развития нашего государства</h1>
                <h1 v-if="lang=='en'" data-animation="bounceInLeft" data-delay="1s">Energy sector is the strong foundation of our state development</h1>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="single-slider bg_cover pt-150" style="background-image: url(front/images/slider/s-3.jpg)" data-overlay="4">
        <div class="container">
          <div class="row">
            <div class="col-xl-7 col-lg-9">
              <div class="slider-cont">
                <h1 v-if="lang=='tm'" data-animation="bounceInLeft" data-delay="1s">Bilimli nesil - kuwwatly watan</h1>
                <h1 v-if="lang=='ru'" data-animation="bounceInLeft" data-delay="1s">Образованное поколение - мощное государство</h1>
                <h1 v-if="lang=='en'" data-animation="bounceInLeft" data-delay="1s">Educated generation  - powerful state</h1>
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
