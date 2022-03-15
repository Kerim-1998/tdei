<template>


  <div>

 <div class="row">
  <router-link to="/tdeiadmin/file" class="btn btn-primary">Ahli File </router-link>

 </div>



    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">File gosmak</h1>
                  </div>

                  <form @submit="fileInsert" enctype="multipart/form-data">
                  <div class="form-group">
                  <div class="form-row">
                        <div class="col-md-6">
                          <label>Ugurlar</label>
                      <select class="form-control" v-model="form.ugur_id">
                         <option :value="ugur.id" v-for="ugur in ugurs">{{ugur.ugur_at_tm}}</option>
                      </select>   
                        </div>
                        </div>
                        </div>
                        <input type="text" class="form-control" placeholder="file_at_tm" v-model="form.file_at_tm">
                        <br>
                        <input type="text" class="form-control" placeholder="file_at_ru" v-model="form.file_at_ru">
                        <br>
                        <input type="text" class="form-control" placeholder="file_at_en" v-model="form.file_at_en">
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
              file_at_tm: null,
              file_at_ru: null,
              file_at_en: null,
              ugur_id: null,
              file: null,
            },
            errors:{},
            ugurs:{},
          }
        },

        methods: {
            onFileChange(e){
                console.log(e.target.files[0]);
                this.form.file = e.target.files[0];
            },

        fileInsert(e) {
        e.preventDefault();

        let datas = new FormData();
        datas.append('file', this.form.file);
        datas.append('file_at_tm', this.form.file_at_tm);
        datas.append('file_at_ru', this.form.file_at_ru);
        datas.append('file_at_en', this.form.file_at_en);
        datas.append('ugur_id', this.form.ugur_id);
       axios.post('/api/file', datas,
          {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
          })
       .then(() => {
        this.$router.push({ name: 'file'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
          },
        
        },
        created(){
          axios.get('/api/ugur/')
          .then(({data}) => (this.ugurs = data))

        }
    }
</script>