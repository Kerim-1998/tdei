

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/olimp" class="btn btn-primary">Ahli Olimp </router-link>

 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Olimp Gosmak</h1>
                  </div>

      <form class="user" @submit.prevent="olimpInsert">
      
         <div class="form-group">

          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="olimp_at_tm" v-model="form.olimp_at_tm">
            </div>
          </div>
          <br>
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="olimp_at_ru" v-model="form.olimp_at_ru">
            </div>
          </div>
          <br>
          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="olimp_at_en" v-model="form.olimp_at_en">
            </div>
          </div>
          <br>
        </div>
        <br>
        
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
        olimp_at_tm: null,
        olimp_at_ru: null,
        olimp_at_en: null
        
      },
      errors:{}
    }
  },

  methods:{
    
  olimpInsert(){
       axios.post('/api/olimp',this.form)
       .then(() => {
        this.$router.push({ name: 'olimp'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  }


  }

</script>


<style type="text/css">

</style>
