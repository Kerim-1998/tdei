<template>
	<div>
		<carouselsmall v-bind="carouselsmall"></carouselsmall>
    <mugustunlik></mugustunlik>
    	
	</div>
	
</template>
<script>
	import carouselsmall from "./carouselsmall";
    import mugustunlik from "./mugustunlik";
	  export default{
    components:{
      carouselsmall,
      mugustunlik
    }
 
    
  };
</script>