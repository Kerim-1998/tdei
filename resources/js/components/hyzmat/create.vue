
<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/hyzmat" class="btn btn-primary">Ahli Hyzmat </router-link>
 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Hyzmat gosmak</h1>
                  </div>

      <form class="user" @submit.prevent="hyzmatInsert" enctype="multipart/form-data">

         <div class="form-group">
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="hyz_at_tm" v-model="form.hyz_at_tm">
            </div>
          </div>
        </div>
        <br>

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="hyz_at_ru" v-model="form.hyz_at_ru">
            </div>
          </div>
        </div>
        <br>

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="hyz_at_en" v-model="form.hyz_at_en">
            </div>
          </div>
        </div>
        <br>

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="link" v-model="form.link">
            </div>
          </div>
        </div>
        <br>


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
          <button type="submit" class="btn btn-primary btn-block">Submit</button>
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
        hyz_at_tm: null,
        hyz_at_ru: null,
        hyz_at_en: null,
        link: null,
        photo: null
      },
      errors:{}
    }
  },

  methods:{
    onFileSelected(event){
     let file = event.target.files[0];
     if (file.size > 4048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.photo = event.target.result
        console.log(event.target.result);
      };
      reader.readAsDataURL(file);
     }

    },
  hyzmatInsert(){
       axios.post('/api/hyzmat',this.form)
       .then(() => {
        this.$router.push({ name: 'hyzmat'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  }


  }

</script>


<style type="text/css">

</style>
