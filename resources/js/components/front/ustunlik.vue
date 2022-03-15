<template>
	<div>
		<carouselsmall v-bind="carouselsmall"></carouselsmall>
    <mugustunlik></mugustunlik>
    <ustunliklerimiz></ustunliklerimiz>
    <tustun></tustun>

	</div>
	
</template>
<script>
	import carouselsmall from "./carouselsmall";
  import mugustunlik from "./mugustunlik";
  import ustunliklerimiz from "./ustunliklerimiz";
  import tustun from "./tustun";
  export default{
  components:{
    carouselsmall,
    mugustunlik,
    ustunliklerimiz,
    tustun
  },
    data(){
    return{
    carouselsmall:{
        carouselsmall_tm: 'ÜSTÜNLIKLERIMIZ',
        carouselsmall_ru: 'НАШИ УСПЕХИ',
        carouselsmall_en: 'ADVANTAGES',
      },
    };
  },
 
    
  };
</script>