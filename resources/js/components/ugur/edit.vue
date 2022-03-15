  

<template>
  
  <div>

 <div class="row">
  <router-link to="/ugur" class="btn btn-primary">Ahli Ugur </router-link>
   
 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"> Ugur Update</h1>
                  </div>

      <form class="user" @submit.prevent="ugurUpdate">
    
        

        <div class="form-group">
          <div class="form-row">

            <div class="col-md-12">
         <input type="text" class="form-control" v-model="form.ugur_at_tm">
            </div>

          </div>
        </div>
        <br>

        <div class="form-group">
          <div class="form-row">

            <div class="col-md-12">
         <input type="text" class="form-control" v-model="form.ugur_at_ru">
            </div>

          </div>
        </div>
        <br>

        <div class="form-group">
          <div class="form-row">

            <div class="col-md-12">
         <input type="text" class="form-control" v-model="form.ugur_at_en">
            </div>

          </div>
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
        ugur_at_tm: '',
        ugur_at_ru: '',
        ugur_at_en: '',
        
      },
      errors:{}
    }
  },
  created(){
    let id = this.$route.params.id
    axios.get('/api/ugur/'+id)
    .then(({data}) => (this.form = data))
    .catch(console.log('error'))
  },

  methods:{
  ugurUpdate(){
      let id = this.$route.params.id
       axios.patch('/api/ugur/'+id,this.form)
       .then(() => {
        this.$router.push({ name: 'ugur'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  } 


  }
   
</script>


<style type="text/css">
  
</style>