
<template>
  
  <div>

 <div class="row">
  <router-link to="/eders" class="btn btn-primary">Ahli eders </router-link>
   
 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"> eders Update</h1>
                  </div>

      <form class="user" @submit.prevent="EdersUpdate">
    
        
        <div class="form-group">

          <div class="form-row">
            <textarea class="form-control" v-model="form.ders_at_tm"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" v-model="form.ders_at_ru"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" v-model="form.ders_at_en"></textarea>
          </div>
          <br>
        </div>
        <br>

        <div class="form-group">

          <div class="form-row">
            <textarea class="form-control" v-model="form.mug_at_tm"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" v-model="form.mug_at_ru"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" v-model="form.mug_at_en"></textarea>
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
        ders_at_tm: '',
        ders_at_ru: '',
        ders_at_en: '',
        mug_at_tm: '',
        mug_at_ru: '',
        mug_at_en: '',
        
      },
      errors:{}
    }
  },
  created(){
    let id = this.$route.params.id
    axios.get('/api/eders/'+id)
    .then(({data}) => (this.form = data))
    .catch(console.log('error'))
  },

  methods:{
  EdersUpdate(){
      let id = this.$route.params.id
       axios.patch('/api/eders/'+id,this.form)
       .then(() => {
        this.$router.push({ name: 'eders'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  } 

  }
   
</script>

<style type="text/css">
  
</style>