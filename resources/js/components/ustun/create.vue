<template>


  <div>

 <div class="row">
  <router-link to="/tdeiadmin/ustun" class="btn btn-primary">Ahli Ustunlik </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Ustunlik gosmak</h1>
                  </div>

                  <form @submit="ustunInsert" enctype="multipart/form-data">
                  <div class="form-group">
                  <div class="form-row">
                        <div class="col-md-6">
                          <label>Olimplar</label>
                      <select class="form-control" v-model="form.olimp_id">
                         <option :value="olimp.id" v-for="olimp in olimps">{{olimp.olimp_at_tm}}</option>
                      </select>   
                        </div>
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="form-row">
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="talyp_at_tm" v-model="form.talyp_at_tm">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="talyp_at_ru" v-model="form.talyp_at_ru">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="talyp_at_en" v-model="form.talyp_at_en">
                        </div>
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="form-row">
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="ders_tm" v-model="form.ders_tm">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="ders_ru" v-model="form.ders_ru">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="ders_en" v-model="form.ders_en">
                        </div>
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="form-row">
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="orun_tm" v-model="form.orun_tm">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="orun_ru" v-model="form.orun_ru">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="orun_en" v-model="form.orun_en">
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
                        <br>
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
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
   
<script>
    export default {
      created(){
      if (!User.loggedIn()) {
        this.$router.push({name: '/tdeiadmin'})
      }
    },
        data(){
          return {
            form:{
              talyp_at_tm: null,
              talyp_at_ru: null,
              talyp_at_en: null,

              ders_tm: null,
              ders_ru: null,
              ders_en: null,

              orun_tm: null,
              orun_ru: null,
              orun_en: null,
              olimp_id: null,
              photo: null,
            },
            errors:{},
            olimps:{},
          }
        },

        methods: {
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

        ustunInsert(e){
          e.preventDefault();
       axios.post('/api/ustun',this.form)
       .then(() => {
        this.$router.push({ name: 'ustun'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
        
        },
        created(){
          axios.get('/api/olimp/')
          .then(({data}) => (this.olimps = data))

        }
    }
</script>