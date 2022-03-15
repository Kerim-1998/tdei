<template>


  <div>

 <div class="row">
  <router-link to="/tdeiadmin/tema" class="btn btn-primary">Ahli tema </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">tema gosmak</h1>
                  </div>

                  <form @submit="temaInsert" enctype="multipart/form-data">
                  <div class="form-group">
                  <div class="form-row">
                        <div class="col-md-6">
                          <label>Ders atlary</label>
                      <select class="form-control" v-model="form.ders_id">
                         <option :value="eders.id" v-for="eders in ederss">{{eders.ders_at_tm}}</option>
                      </select>   
                        </div>
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="form-row">
                          <div class="col-md-12">
                            <input type="text" class="form-control" placeholder="tema_tm" v-model="form.tema_tm">
                          </div>
                          <div class="col-md-12">
                            <input type="text" class="form-control" placeholder="tema_ru" v-model="form.tema_ru">
                          </div>
                          <div class="col-md-12">
                            <input type="text" class="form-control" placeholder="tema_en" v-model="form.tema_en">
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
              tema_tm: null,
              tema_ru: null,
              tema_en: null,
              ders_id: null,
            },
            errors:{},
            ederss:{},
          }
        },

        methods: {
        temaInsert(e){
          e.preventDefault();
       axios.post('/api/tema',this.form)
       .then(() => {
        this.$router.push({ name: 'tema'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
        
        },
        created(){
          axios.get('/api/eders/')
          .then(({data}) => (this.ederss = data))

        }
    }
</script>