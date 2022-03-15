

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/carousel" class="btn btn-primary">Ahli Carousel </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"> Carousel uytget</h1>
                  </div>

      <form class="user" @submit.prevent="carouselUpdate" enctype="multipart/form-data">

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

  <small class="text-danger" v-if="errors.photo"> {{ errors.photo[0] }} </small>
       <label class="custom-file-label" for="customFile">Choose file</label>
            </div>


     <div class="col-md-6">
        <img :src="form.photo" style="height: 40px; width: 40px;">
            </div>

          </div>
        </div>




        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-block">Update</button>
        </div>

      </form>
                  <hr>
                  <div class="text-center">


                  </div>
                  <div class="text-center">
                  </div>
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
        h1texttm: '',
        h1textru: '',
        h1texten: '',
        spantexttm: '',
        spantextru: '',
        spantexten: '',
        photo: '',
        newphoto: '',
        nid: '',
      },
      errors:{}
    }
  },
  created(){
  	let id = this.$route.params.id
  	axios.get('/api/carousel/'+id)
  	.then(({data}) => (this.form = data))
  	.catch(console.log('error'))
  },

  methods:{
    onFileSelected(event){
     let file = event.target.files[0];
     if (file.size > 2048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.newphoto = event.target.result

      };
      reader.readAsDataURL(file);
     }

    },
  carouselUpdate(){
  	  let id = this.$route.params.id
       axios.patch('/api/carousel/'+id,this.form)
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
