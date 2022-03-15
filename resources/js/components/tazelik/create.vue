

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/tazelik" class="btn btn-primary">Ahli Tazelik </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Tazelik gosmak</h1>
                  </div>

      <form class="user" @submit.prevent="tazelikInsert" enctype="multipart/form-data">

        <div class="form-group">
          <div class="form-row">
            <div class="col-md-4">
         <input type="text" class="form-control" placeholder="Gun" v-model="form.gun">
            </div>

            <div class="col-md-4">
         <input type="text" class="form-control" placeholder="Ay" v-model="form.ay">
            </div>

            <div class="col-md-4">
         <input type="text" class="form-control" placeholder="Yyl" v-model="form.yyl">
            </div>

          </div>
        </div>
        <br>

         <div class="form-group">
          <div class="form-row">

            <div class="col-md-6">
         <input type="text" class="form-control" placeholder="Tema_TM" v-model="form.tema_tm">
            </div>

            <div class="col-md-6">
         <input type="text" class="form-control" placeholder="Dusundiris_TM" v-model="form.dusundiris_tm">
            </div>

          </div>
        </div>

        <div class="form-group">
          <div class="form-row">

            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="Tazelik_TM" v-model="form.tazelik_tm">
            </div>

          </div>
        </div>
        <br>
        <div class="form-group">
         <div class="form-row">

           <div class="col-md-6">
        <input type="text" class="form-control" placeholder="Tema_RU" v-model="form.tema_ru">
           </div>

           <div class="col-md-6">
        <input type="text" class="form-control" placeholder="Dusundiris_RU" v-model="form.dusundiris_ru">
           </div>

         </div>
       </div>

       <div class="form-group">
         <div class="form-row">

           <div class="col-md-12">
        <input type="text" class="form-control" placeholder="Tazelik_RU" v-model="form.tazelik_ru">
           </div>

         </div>
       </div>
       <br>
       <div class="form-group">
        <div class="form-row">

          <div class="col-md-6">
       <input type="text" class="form-control" placeholder="Tema_EN" v-model="form.tema_en">
          </div>

          <div class="col-md-6">
       <input type="text" class="form-control" placeholder="Dusundiris_EN" v-model="form.dusundiris_en">
          </div>

        </div>
      </div>

      <div class="form-group">
        <div class="form-row">

          <div class="col-md-12">
       <input type="text" class="form-control" placeholder="Tazelik_EN" v-model="form.tazelik_en">
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
        gun: null,
        ay: null,
        yyl: null,
        tema_tm: null,
        tema_ru: null,
        tema_en: null,
        dusundiris_tm: null,
        tazelik_tm: null,
        dusundiris_ru: null,
        tazelik_ru: null,
        dusundiris_en: null,
        tazelik_en: null,
        photo: null,
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
        this.form.photo = event.target.result
        console.log(event.target.result);
      };
      reader.readAsDataURL(file);
     }

    },
  tazelikInsert(){
       axios.post('/api/tazelik',this.form)
       .then(() => {
        this.$router.push({ name: 'tazelik'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  }


  }

</script>


<style type="text/css">

</style>
