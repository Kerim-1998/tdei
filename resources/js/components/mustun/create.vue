

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/mustun" class="btn btn-primary">Ahli Mugallymlar ustunlikleri </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Mugallymlar ustunlikleri gosmak</h1>
                  </div>

      <form class="user" @submit.prevent="mustunInsert" enctype="multipart/form-data">

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-6">
   <input type="file" class="custom-file-input" id="customFile" @change="onFileSelected1">

  <small class="text-danger" v-if="errors.patent_photo"> {{ errors.patent_photo[0] }} </small>
       <label class="custom-file-label" for="customFile">patent_photo</label>
            </div>
     <div class="col-md-6">
        <img :src="form.patent_photo" style="height: 40px; width: 40px;">
            </div>
          </div>
        </div>

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="patent_ady_tm" v-model="form.patent_ady_tm">
            </div>
          </div>
        </div>
        <br>
      

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="patent_ady_ru" v-model="form.patent_ady_ru">
            </div>
          </div>
        </div>
        <br>

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="patent_ady_en" v-model="form.patent_ady_en">
            </div>
          </div>
        </div>
        <br>

        <div class="form-group">
         <div class="form-row">

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="mug_ady_tm" v-model="form.mug_ady_tm">
           </div>

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="mug_ady_ru" v-model="form.mug_ady_ru">
           </div>

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="mug_ady_en" v-model="form.mug_ady_en">
           </div>

         </div>
       </div>
       <br>

       <div class="form-group">
         <div class="form-row">

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="hunar_tm" v-model="form.hunar_tm">
           </div>

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="hunar_ru" v-model="form.hunar_ru">
           </div>

           <div class="col-md-4">
        <input type="text" class="form-control" placeholder="hunar_en" v-model="form.hunar_en">
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

  <small class="text-danger" v-if="errors.patent_photo1"> {{ errors.patent_photo1[0] }} </small>
       <label class="custom-file-label" for="customFile">patent_photo</label>
            </div>
     <div class="col-md-6">
        <img :src="form.patent_photo1" style="height: 40px; width: 40px;">
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
        patent_photo: null,
        patent_ady_tm: null,
        patent_ady_ru: null,
        patent_ady_en: null,
        mug_ady_tm: null,
        mug_ady_ru: null,
        mug_ady_en: null,
        hunar_tm: null,
        hunar_ru: null,
        hunar_en: null,
        dusundiris_tm: null,
        dusundiris_ru: null,
        dusundiris_en: null,
        patent_photo1: null
      },
      errors:{}
    }
  },

  methods:{
    onFileSelected1(event){
     let file = event.target.files[0];
     if (file.size > 3048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.patent_photo = event.target.result
        console.log(event.target.result);
      };
      reader.readAsDataURL(file);
     }

    },
    onFileSelected2(event){
     let file = event.target.files[0];
     if (file.size > 3048770) {
      Notification.image_validation()
     }else{
      let reader = new FileReader();
      reader.onload = event =>{
        this.form.patent_photo1 = event.target.result
        console.log(event.target.result);
      };
      reader.readAsDataURL(file);
     }

    },
  mustunInsert(){
       axios.post('/api/mustun',this.form)
       .then(() => {
        this.$router.push({ name: 'mustun'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  }


  }

</script>


<style type="text/css">

</style>
