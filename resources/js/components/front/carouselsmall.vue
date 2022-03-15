<template>
<div>
	<section id="page-banner" class="pt-105 pb-110 bg_cover" data-overlay="8" style="background-image: url(/front/images/bg-1.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-banner-cont">
                        <h2 v-if="lang=='tm'">{{carouselsmall_tm}}</h2>
                        <h2 v-if="lang=='ru'">{{carouselsmall_ru}}</h2>
                        <h2 v-if="lang=='en'">{{carouselsmall_en}}</h2>
                    </div>  <!-- page banner cont -->
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
export default {
    props: {
        carouselsmall_tm: String,
        carouselsmall_ru: String,
        carouselsmall_en: String,
    },
        computed: {
  ...mapGetters(["itemsInBasket"]),
  ...mapState({
      basket: state => state.basket.items,
      lang: state => state.lang.items[0].lang
        }),
    },
};
</script>
