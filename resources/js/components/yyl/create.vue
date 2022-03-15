

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/yyl" class="btn btn-primary">Ahli yyl </router-link>

 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">yyl Gosmak</h1>
                  </div>

      <form class="user" @submit.prevent="yylInsert">
      
         <div class="form-group">

          <div class="form-row">
            <div class="col-md-12">
         <input type="text" class="form-control" placeholder="yyl" v-model="form.yyl">
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
        yyl: null
        
      },
      errors:{}
    }
  },

  methods:{
    
  yylInsert(){
       axios.post('/api/yyl',this.form)
       .then(() => {
        this.$router.push({ name: 'yyl'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  }

  }

</script>

<style type="text/css">

</style>
