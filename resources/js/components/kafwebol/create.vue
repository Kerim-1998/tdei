

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/kafwebol" class="btn btn-primary">Ahli Kafwebol </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Kafwebol gosmak</h1>
                  </div>

      <form class="user" @submit.prevent="kafwebolInsert" enctype="multipart/form-data">

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-6">
   <input type="file" class="custom-file-input" id="customFile" @change="onFileSelected1">

  <small class="text-danger" v-if="errors.kaf_photo"> {{ errors.kaf_photo[0] }} </small>
       <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
     <div class="col-md-6">
        <img :src="form.kaf_photo" style="height: 40px; width: 40px;">
            </div>
          </div>
        </div>
        

         <div class="form-group">
          <div class="form-row">

            <div class="col-md-4">
         <input type="text" class="form-control" placeholder="kaf_at_tm" v-model="form.kaf_at_tm">
            </div>

            <div class="col-md-4">
         <input type="text" class="form-control" placeholder="kaf_at_ru" v-model="form.kaf_at_ru">
            </div>

            <div class="col-md-4">
         <input type="text" class="form-control" placeholder="kaf_at_en" v-model="form.kaf_at_en">
            </div>

          </div>
        </div>

        <br>
        <div class="form-group">
         <div class="form-row">

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="gysga_text_tm" v-model="form.gysga_text_tm">
           </div>

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="gysga_text_ru" v-model="form.gysga_text_ru">
           </div>

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="gysga_text_en" v-model="form.gysga_text_en">
           </div>

         </div>
       </div>

       <br>
       <div class="form-group">
        <div class="form-row">

          <div class="col-md-12">
       <input type="text" class="form-control" placeholder="dusundiris_tm" v-model="form.dusundiris_tm">
          </div>
        
          <div class="col-md-12">
       <input type="text" class="form-control" placeholder="dusundiris_ru" v-model="form.dusundiris_ru">
          </div>
         
          <div class="col-md-12">
       <input type="text" class="form-control" placeholder="dusundiris_en" v-model="form.dusundiris_en">
          </div>

        </div>
      </div>


      <div class="form-group">
          <div class="form-row">
            <div class="col-md-6">
   <input type="file" class="custom-file-input" id="customFile" @change="onFileSelected2">

  <small class="text-danger" v-if="errors.bol_photo"> {{ errors.bol_photo[0] }} </small>
       <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
     <div class="col-md-6">
        <img :src="form.bol_photo" style="height: 40px; width: 40px;">
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
        kaf_photo: null,
        kaf_at_tm: null,
        kaf_at_ru: null,
        kaf_at_en: null,
        gysga_text_tm: null,
        gysga_text_ru: null,
        gysga_text_en: null,
        dusundiris_tm: null,
        dusundiris_ru: null,
        dusundiris_en: null,
        bol_photo: null
      },
      errors:{}
    }
  },

  methods:{
    onFileSelected1(event){
     let file = event.target.files[0];
     if (file.size > 9048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.kaf_photo = event.target.result
        console.log(event.target.result);
      };
      reader.readAsDataURL(file);
     }

    },
    onFileSelected2(event){
     let file = event.target.files[0];
     if (file.size > 9048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.bol_photo = event.target.result
        console.log(event.target.result);
      };
      reader.readAsDataURL(file);
     }

    },
  kafwebolInsert(){
       axios.post('/api/kafwebol',this.form)
       .then(() => {
        this.$router.push({ name: 'kafwebol'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  }


  }

</script>


<style type="text/css">

</style>
