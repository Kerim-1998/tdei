<template>
	<div>
		<carousel></carousel>
		<dowrebap></dowrebap>
		<tazelik></tazelik>
		<counter></counter>
		<testimonial></testimonial>
	</div>
	
</template>
<script>
	import carousel from "./carousel";
	import tazelik from "./tazelik";
	import counter from "./counter";
	import dowrebap from "./dowrebap";
	import testimonial from "./testimonial";
	  export default{
    components:{
      carousel,
      tazelik,
      counter,
      dowrebap,
      testimonial,
    }
 
    
  };
</script>