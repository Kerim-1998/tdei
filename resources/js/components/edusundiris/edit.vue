
<template>
  
  <div>

 <div class="row">
  <router-link to="/edusundiris" class="btn btn-primary">Ahli edusundiris </router-link>
   
 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"> edusundiris Update</h1>
                  </div>

      <form class="user" @submit.prevent="EdusundirisUpdate">
    
        
        <div class="form-group">

          <div class="form-row">
            <textarea class="form-control" v-model="form.dusundiris_tm"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" v-model="form.dusundiris_ru"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" v-model="form.dusundiris_en"></textarea>
          </div>
          <br>
        </div>
        <br>
    
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
        dusundiris_tm: '',
        dusundiris_ru: '',
        dusundiris_en: '',
        
      },
      errors:{}
    }
  },
  created(){
    let id = this.$route.params.id
    axios.get('/api/edusundiris/'+id)
    .then(({data}) => (this.form = data))
    .catch(console.log('error'))
  },

  methods:{
  EdusundirisUpdate(){
      let id = this.$route.params.id
       axios.patch('/api/edusundiris/'+id,this.form)
       .then(() => {
        this.$router.push({ name: 'edusundiris'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  } 

  }
   
</script>

<style type="text/css">
  
</style>