<template>
<div>
	    <section id="video-feature" class="bg_cover pt-10 pb-20" style="background-image: url(/front/images/bg-1.jpg)">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12 order-first order-lg-last">
                    <div class="feature pt-50">
                        <div class="feature-title">
                            <h3 v-if="lang=='tm'">Döwrebap bilim ulgamy</h3>
                            <h3 v-if="lang=='ru'">Система современного образования</h3>
                            <h3 v-if="lang=='en'">Modern educational system</h3>
                        </div>
                        <ul>
                            <li>
                                <div class="singel-feature">
                                    <div class="cont">
                                        <h4 v-if="lang=='tm'">Ökde hünärmenler</h4>
                                        <h4 v-if="lang=='ru'">Квалифицированные специалисты</h4>
                                        <h4 v-if="lang=='en'">Qualified specialists</h4>
                                        <p v-if="lang=='tm'">Energetika pudagyny mundan beýläk-de ösdürmäge goşant goşjak ökde hünärmenler</p>
                                        <p v-if="lang=='ru'">Квалифицированные специалисты, которые будут содействовать развитию энергетической отрасли</p>
                                        <p v-if="lang=='en'">Qualified specialists, who will contribute to the development of the energy sector</p>
                                    </div>
                                </div> <!-- singel feature -->
                            </li>
                            <li>
                                <div class="singel-feature">
                                    <div class="cont">
                                        <h4 v-if="lang=='tm'">Sanly bilim ulgamy</h4>
                                        <h4 v-if="lang=='ru'">Система цифрового образования</h4>
                                        <h4 v-if="lang=='en'">Digital educational system</h4>

                                        <p v-if="lang=='tm'">Döwrebap bilim almagyň innowasion usullary</p>
                                        <p v-if="lang=='ru'">Инновационные методы получения современного образования</p>
                                        <p v-if="lang=='en'">Innovative methods of gaining modern education</p>
                                    </div>
                                </div> <!-- singel feature -->
                            </li>
                            <li>
                                <div class="singel-feature">
                                    <div class="cont">
                                        <h4 v-if="lang=='tm'">Tejribelik</h4>
                                        <h4 v-if="lang=='ru'">Практика</h4>
                                        <h4 v-if="lang=='en'">Practial training</h4>
                                        <p v-if="lang=='tm'">Okuw - önümçilik tejribelikleri</p>
                                        <p v-if="lang=='ru'">Учебно-производственная практика</p>
                                        <p v-if="lang=='en'">Field study</p>
                                    </div>
                                </div> <!-- singel feature -->
                            </li>
                        </ul>
                    </div> <!-- feature -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
        <div class="feature-bg"></div> <!-- feature bg -->

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

