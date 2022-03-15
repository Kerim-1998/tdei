<template>


  <div>

 <div class="row">
  <router-link to="/tdeiadmin/temafile" class="btn btn-primary">Ahli temafile </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">temafile gosmak</h1>
                  </div>

                  <form @submit="temafileInsert" enctype="multipart/form-data">
                  <div class="form-group">
                  <div class="form-row">
                        <div class="col-md-6">
                          <label>Temalar</label>
                      <select class="form-control" v-model="form.tema_id">
                         <option :value="tema.id" v-for="tema in temas">{{tema.tema_tm}}</option>
                      </select>   
                        </div>
                        </div>
                        </div>
                        <input type="text" class="form-control" placeholder="temafile_at_tm" v-model="form.temafile_at_tm">
                        <br>
                        <input type="text" class="form-control" placeholder="temafile_at_ru" v-model="form.temafile_at_ru">
                        <br>
                        <input type="text" class="form-control" placeholder="temafile_at_en" v-model="form.temafile_at_en">
                        <br>
                        <input type="file" class="form-control" v-on:change="onFileChange">
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
              temafile_at_tm: null,
              temafile_at_ru: null,
              temafile_at_en: null,
              tema_id: null,
              temafile: null,
            },
            errors:{},
            temas:{},
          }
        },

        methods: {
            onFileChange(e){
                console.log(e.target.files[0]);
                this.form.temafile = e.target.files[0];
            },

        temafileInsert(e) {
        e.preventDefault();

        let datas = new FormData();
        datas.append('temafile', this.form.temafile);
        datas.append('temafile_at_tm', this.form.temafile_at_tm);
        datas.append('temafile_at_ru', this.form.temafile_at_ru);
        datas.append('temafile_at_en', this.form.temafile_at_en);
        datas.append('tema_id', this.form.tema_id);
       axios.post('/api/temafile', datas,
          {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
          })
       .then(() => {
        this.$router.push({ name: 'temafile'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
          },
        
        },
        created(){
          axios.get('/api/tema/')
          .then(({data}) => (this.temas = data))

        }
    }
</script>