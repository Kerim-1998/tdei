  

<template>
  
  <div>

 <div class="row">
  <router-link to="/kafwebol" class="btn btn-primary">Ahli Kafwebol </router-link>
   
 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"> Kafwebol Update</h1>
                  </div>

      <form class="user" @submit.prevent="kafwebolUpdate" enctype="multipart/form-data">

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
         <input type="text" class="form-control" v-model="form.kaf_at_tm">
            </div>

            <div class="col-md-4">
         <input type="text" class="form-control" v-model="form.kaf_at_ru">
            </div>

            <div class="col-md-4">
         <input type="text" class="form-control" v-model="form.kaf_at_en">
            </div>

          </div>
        </div>

        <br>
        <div class="form-group">
         <div class="form-row">

           <div class="col-md-4">
        <input type="text" class="form-control" v-model="form.gysga_text_tm">
           </div>

           <div class="col-md-4">
        <input type="text" class="form-control" v-model="form.gysga_text_ru">
           </div>

           <div class="col-md-4">
        <input type="text" class="form-control" v-model="form.gysga_text_en">
           </div>

         </div>
       </div>

       <br>
       <div class="form-group">
        <div class="form-row">

          <div class="col-md-12">
       <input type="text" class="form-control" v-model="form.dusundiris_tm">
          </div>
        
          <div class="col-md-12">
       <input type="text" class="form-control" v-model="form.dusundiris_ru">
          </div>
         
          <div class="col-md-12">
       <input type="text" class="form-control" v-model="form.dusundiris_en">
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
          <button type="submit" class="btn btn-primary btn-block">Uytget</button>
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
        kaf_photo: '',
        kaf_newphoto: '',
        kaf_at_tm: '',
        kaf_at_ru: '',
        kaf_at_en: '',
        gysga_text_tm: '',
        gysga_text_ru: '',
        gysga_text_en: '',
        dusundiris_tm: '',
        dusundiris_ru: '',
        dusundiris_en: '',
        bol_photo: '',
        bol_newphoto: ''
        
      },
      errors:{}
    }
  },
  created(){
    let id = this.$route.params.id
    axios.get('/api/kafwebol/'+id)
    .then(({data}) => (this.form = data))
    .catch(console.log('error'))
  },

  methods:{
    onFileSelected1(event){
     let file = event.target.files[0];
     if (file.size > 2048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.kaf_newphoto = event.target.result
       
      };
      reader.readAsDataURL(file);
     }

    },
    onFileSelected2(event){
     let file = event.target.files[0];
     if (file.size > 2048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.bol_newphoto = event.target.result
       
      };
      reader.readAsDataURL(file);
     }

    },
  kafwebolUpdate(){
      let id = this.$route.params.id
       axios.patch('/api/kafwebol/'+id,this.form)
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