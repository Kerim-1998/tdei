<template>
<div>
	    <section id="testimonial" class="bg_cover pt-15 pb-15" data-overlay="8">
        <div class="container">
            <div class="row testimonial-slied mt-40">
                <div class="col-lg-6">
                    <div class="singel-testimonial">
                        <div class="testimonial-cont">
                            <p v-if="lang=='tm'">Ýaşlarymyzyň ýokary derejede bilim almagyna, saýlan hünäriniň eýesi bolmagyna ýardam bermek ýurdumyzda alnyp barylýan ähli özgertmeleriň özenidir.</p>
                            <p v-if="lang=='ru'">Наша цель - дать молодежи блестящее образование, помочь молодым людям получить хорошие знания по избранной специальности.</p>
                            <p v-if="lang=='en'">Our objective - to give brilliant education to youth, to help young people to obtain good knowledge in chosen speciality, to stimulate their scientific work</p>
                            <h6 v-if="lang=='tm'">Türkmenistanyň Prezidenti</h6>
                            <h6 v-if="lang=='ru'">Президент Туркменистана</h6>
                            <h6 v-if="lang=='en'">The President of Turkmenistan</h6>
                            <h6 v-if="lang=='tm'">GURBANGULY BERDIMUHAMEDOW</h6>
                            <h6 v-if="lang=='ru'">ГУРБАНГУЛЫ БЕРДЫМУХАМЕДОВ</h6>
                            <h6 v-if="lang=='en'">GURBANGULY BERDIMUHAMEDOV</h6>
                        </div>
                    </div> <!-- singel testimonial -->
                </div>
                <div class="col-lg-6">
                    <div class="singel-testimonial">
                        <div class="testimonial-cont">
                            <p v-if="lang=='tm'">Türkmenistan - energiýa serişdelerine baý döwlet.Halkymyzyň ýaşaýyş-durmuş şertlerini mundan beýläk hem gowlandyrmak üçin bu baýlyklary ýerlikli we tygşytly ulanmak biziň baş maksadymyzdyr.</p>
                            <p v-if="lang=='ru'">Туркменистан - государство c богатыми энергоресурсами. Нашей основной целью является рациональное и экономичное использование этих ресурсов для дальнейшего улучшения социальных условий жизни нашего народа.</p>
                            <p v-if="lang=='en'">Turkmenistan is the state with rich energy resources. Our main goal is the rational and economical usage of these resources for the further improvement of the social living conditions of our people.</p>
                            <h6 v-if="lang=='tm'">Türkmenistanyň Prezidenti</h6>
                            <h6 v-if="lang=='ru'">Президент Туркменистана</h6>
                            <h6 v-if="lang=='en'">The President of Turkmenistan</h6>
                            <h6 v-if="lang=='tm'">GURBANGULY BERDIMUHAMEDOW</h6>
                            <h6 v-if="lang=='ru'">ГУРБАНГУЛЫ БЕРДЫМУХАМЕДОВ</h6>
                            <h6 v-if="lang=='en'">GURBANGULY BERDIMUHAMEDOV</h6>
                        </div>
                    </div> <!-- singel testimonial -->
                </div>
                <div class="col-lg-6">
                    <div class="singel-testimonial">
                        <div class="testimonial-cont">
                            <p v-if="lang=='tm'">Bu ne gudrat işdir: suwdan ot çykar?!</p>
                            <p v-if="lang=='ru'">Что за чудо: из воды извергается пламя?!</p>
                            <p v-if="lang=='en'">What a miracle: flame is ejected from the water?!</p>
                            <h6 v-if="lang=='tm'">Beýik nusgawy şahyrymyz</h6>
                            <h6 v-if="lang=='ru'">Великий поэт - классик</h6>
                            <h6 v-if="lang=='en'">Great classical poet</h6>
                            <h6 v-if="lang=='tm'">Magtymguly Pyragy</h6>
                            <h6 v-if="lang=='ru'">Махтумкули Фраги</h6>
                            <h6 v-if="lang=='en'">MAGTYMGULY PHRAGY</h6>
                        </div>
                    </div> <!-- singel testimonial -->
                </div>
            </div> <!-- testimonial slied -->
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

  computed: {
  ...mapGetters(["itemsInBasket"]),
  ...mapState({
      basket: state => state.basket.items,
      lang: state => state.lang.items[0].lang
        }),
    },

}
</script>

