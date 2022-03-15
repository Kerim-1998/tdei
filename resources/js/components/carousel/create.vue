

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/carousel" class="btn btn-primary">All Carousel </router-link>

 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Carousel Gosmak</h1>
                  </div>

      <form class="user" @submit.prevent="carouselInsert" enctype="multipart/form-data">

      <div class="form-group">
          <div class="form-row">
            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="h1 Text TM" v-model="form.h1texttm">
            </div>

            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="Span Text TM" v-model="form.spantexttm">
            </div>
          </div>
      </div>

      <div class="form-group">
          <div class="form-row">
            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="h1 Text RU" v-model="form.h1textru">
            </div>

            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="Span Text RU" v-model="form.spantextru">
            </div>
          </div>
      </div>
      <div class="form-group">
          <div class="form-row">
            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="h1 Text EN" v-model="form.h1texten">
            </div>

            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="Span Text EN" v-model="form.spantexten">
            </div>
          </div>
      </div>

         <div class="form-group">

          <div class="form-row">
            <div class="col-md-6">
   <input type="file" class="custom-file-input" id="customFile" @change="onFileSelected">

  <small class="text-danger" v-if="errors.photocarousel"> {{ errors.photocarousel[0] }} </small>
       <label class="custom-file-label" for="customFile">Choose file</label>
            </div>


     <div class="col-md-6">
        <img :src="form.photocarousel" style="height: 40px; width: 40px;">
            </div>

          </div>
        </div>




        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </div>

      </form>
                  <hr>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


</template>



<script type="text/javascript">

  export default {
    created(){
      if (!User.loggedIn()) {
        this.$router.push({name: '/tdeiadmin'})
      }
    },

    data(){
    return {
      form:{
        h1texttm: null,
        h1textru: null,
        h1texten: null,
        spantexttm: null,
        spantextru: null,
        spantexten: null,
        photocarousel: null,

        nid: null
      },
      errors:{}
    }
  },

  methods:{
    onFileSelected(event){
     let file = event.target.files[0];
     if (file.size > 2048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.photocarousel = event.target.result
        console.log(event.target.result);
      };
      reader.readAsDataURL(file);
     }

    },
  carouselInsert(){
       axios.post('/api/carousel',this.form)
       .then(() => {
        this.$router.push({ name: 'carousel'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  }


  }

</script>


<style type="text/css">

</style>
