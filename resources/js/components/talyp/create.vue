<template>


  <div>

 <div class="row">
  <router-link to="/tdeiadmin/talyp" class="btn btn-primary">Ahli talyp </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">talyp gosmak</h1>
                  </div>

                  <form @submit="talypInsert" enctype="multipart/form-data">
                  <div class="form-group">
                  <div class="form-row">
                        <div class="col-md-6">
                          <label>Yarys atlary</label>
                      <select class="form-control" v-model="form.yarys_id">
                         <option :value="yarys.id" v-for="yarys in yaryss">{{yarys.yarys_at_tm}}</option>
                      </select>   
                        </div>
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="form-row">
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="at_tm" v-model="form.at_tm">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="at_ru" v-model="form.at_ru">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="at_en" v-model="form.at_en">
                        </div>
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="form-row">
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="kurs_tm" v-model="form.kurs_tm">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="kurs_ru" v-model="form.kurs_ru">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="kurs_en" v-model="form.kurs_en">
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
              at_tm: null,
              at_ru: null,
              at_en: null,
              kurs_tm: null,
              kurs_ru: null,
              kurs_en: null,
              ders_tm: null,
              ders_ru: null,
              ders_en: null,
              yarys_id: null,
              photo: null,
            },
            errors:{},
            yaryss:{},
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

        talypInsert(e){
          e.preventDefault();
       axios.post('/api/talyp',this.form)
       .then(() => {
        this.$router.push({ name: 'talyp'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
        
        },
        created(){
          axios.get('/api/yarys/')
          .then(({data}) => (this.yaryss = data))

        }
    }
</script>