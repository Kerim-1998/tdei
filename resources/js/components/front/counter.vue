<template>
<div>
	<div id="counter-part" class="bg_cover pt-10 pb-50" data-overlay="8">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="singel-counter text-center mt-40">
                        <span><span class="counter">4</span></span>
                        <p v-if="lang=='tm'">FAKULTET</p>
                        <p v-if="lang=='ru'">ФАКУЛЬТЕТ</p>
                        <p v-if="lang=='en'">FACULTY</p>
                    </div> <!-- singel counter -->
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="singel-counter text-center mt-40">
                        <span><span class="counter">13</span></span>
                        <p v-if="lang=='tm'">KAFEDRA</p>
                        <p v-if="lang=='ru'">ОТДЕЛЕНИЕ</p>
                        <p v-if="lang=='en'">DEPARTMENT</p>
                    </div> <!-- singel counter -->
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="singel-counter text-center mt-40">
                        <span><span class="counter">21</span></span>
                        <p v-if="lang=='tm'">HÜNÄR</p>
                        <p v-if="lang=='ru'">ПРОФЕССИЯ</p>
                        <p v-if="lang=='en'">PROFESSION</p>
                    </div> <!-- singel counter -->
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="singel-counter text-center mt-40">
                        <span><span class="counter">203</span></span>
                        <p v-if="lang=='tm'">TEJRIBELI MUGALLYMLAR</p>
                        <p v-if="lang=='ru'">ОПЫТ УЧИТЕЛЕЙ</p>
                        <p v-if="lang=='en'">EXPERT TEACHERS</p>
                    </div> <!-- singel counter -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div>
</div>

</template>

<script>
import {
    mapGetters,
    mapState
} from "vuex";
export default{

  computed: {
  ...mapGetters(["itemsInBasket"]),
  ...mapState({
      basket: state => state.basket.items,
      lang: state => state.lang.items[0].lang
        }),
    },

}
</script>

