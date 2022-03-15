<template>
<div>
<carouselsmall v-bind="carouselsmall"></carouselsmall>
	    <section id="corses-singel" class="pt-20 pb-50 gray-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="corses-singel-left mt-30">
                        <div class="title" style="text-align: center;">
                        	<img src="/front/images/hed.png">
                        	<br>
                        	<div v-if="lang=='tm'" v-html="edusundirisfront.dusundiris_tm"></div>
	                        <div v-if="lang=='ru'" v-html="edusundirisfront.dusundiris_ru"></div>
	                        <div v-if="lang=='en'" v-html="edusundirisfront.dusundiris_en"></div>
	                        <br>
                            <h3 v-if="lang=='tm'">"TÄZE TEHNOLOGIÝALAR ARKALY MERKEZI AZIÝADA ÝOKARY BILIMIŇ KÄMILLEŞDIRILMEGI" atly taslamanyň çäklerinde taýýarlanylan onlaýn elektron okuwlary</h3>
                            <h3 v-if="lang=='ru'">Веб-базированные курсы которые разработаны в рамках проекта «Совершенствование высшего образования в Центральной Азии посредством современных технологий (HiEdTec)»</h3>
                            <h3 v-if="lang=='en'">Web-based courses developed in the framework of " MODERNISATION OF HIGHER EDUCATION IN CENTRAL ASIA THROUGH NEW TECHNOLOGIES ( HiEdTec )" project</h3>
                            <br>
                        </div> <!-- title -->
                        <br><br>

                        <div v-for="eders in ederss" :key="eders.id">
                        	
	                        <div class="course-terms" style="text-align: center;">
	                            <h4 v-if="lang=='tm'" style="font-size: 30px;">{{eders.ders_at_tm}}</h4>
	                            <h4 v-if="lang=='ru'" style="font-size: 30px;">{{eders.ders_at_ru}}</h4>
	                            <h4 v-if="lang=='en'" style="font-size: 30px;">{{eders.ders_at_en}}</h4>
	                            <br>
	                        </div>
	                        <h6 v-if="lang=='tm'">{{eders.mug_at_tm}}</h6>
	                        <h6 v-if="lang=='ru'">{{eders.mug_at_ru}}</h6>
	                        <h6 v-if="lang=='en'">{{eders.mug_at_en}}</h6>
	                        
	                        <div class="corses-tab mt-30">
	                        
	                            <div class="tab-content" id="myTabContent">
	                                
	                                    <div v-for="tema in temas" :key="tema.id" v-if="tema.ders_id==eders.id" class="curriculam-cont">
	                                        <div class="accordion">
	                                           
	                                            <div class="card">
	                                                <div class="card-header">
	                                                    <a href="#" data-toggle="collapse" class="collapsed" :data-target="'#collapse'+tema.id" aria-expanded="false">
	                                                        <ul>
	                                                            <li><span class="lecture"></span></li>
	                                                            <li>
	                                                            <span v-if="lang=='tm'" class="head">{{tema.tema_tm}}</span>
	                                                            <span v-if="lang=='ru'" class="head">{{tema.tema_ru}}</span>
	                                                            <span v-if="lang=='en'" class="head">{{tema.tema_en}}</span>
	                                                            </li>
	                                                            <li></li>
	                                                        </ul>
	                                                    </a>
	                                                </div>
	                                                <div :id="'collapse'+tema.id" class="collapse" >
	                                                    <div class="card-body">
	                                                    	<ul>
	                                                    	<div v-for="temafile in temafiles" :key="temafile.id" v-if="temafile.tema_id==tema.id">
	                                                    	<a :href="temafile.temafile">
	                                                    		<button  v-if="lang=='tm'" class="btn btn-success">{{temafile.temafile_at_tm}}</button>
		                                                    	<button  v-if="lang=='ru'" class="btn btn-success">{{temafile.temafile_at_ru}}</button>
		                                                    	<button  v-if="lang=='en'" class="btn btn-success">{{temafile.temafile_at_en}}</button>
		                                                     </a>
	                                                    		
	                                                    	</div>
	                                                    	

	                                                        </ul>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            
	                                            
	                                            
	                                        </div>
	                                    </div>
	                             
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
        carouselsmall_tm: 'ELEKTRON OKUW',
        carouselsmall_ru: 'ЭЛЕКТРОННОЕ ОБРАЗОВАНИЕ',
        carouselsmall_en: 'ELECTRONIC EDUCATION',
      },
      ederss: null,
      temas: null,
      temafiles: null,
      loading:false,
      loadingfortema:false,
      loadingfortemafile:false,
      loadingforedus:false,
      edusundirisfront:'',
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
    .get('/api/dersfront')
    .then(response=>{
      this.ederss = response.data.data;
      this.loading=false;
    });
    this.loadingfortema = true;
    axios
    .get('/api/temafront')
    .then(response=>{
      this.temas = response.data.data;
      this.loadingfortema=false;
    });
    this.loadingfortemafile = true;
    axios
    .get('/api/temafilefront')
    .then(response=>{
      this.temafiles = response.data.data;
      this.loadingfortemafile=false;
    });
    this.loadingforedus = true;
    axios
    .get('/api/edusundirisfront')
    .then(response=>{
      this.edusundirisfront = response.data.data;
      this.loadingforedus=false;
    });
  },

}
</script>
