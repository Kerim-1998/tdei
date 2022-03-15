

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/eders" class="btn btn-primary">Ahli eders </router-link>

 </div>

    <div class="row justify-content-center">
      <div class="col-xl-12 col-lg-12 col-md-12">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">eders Gosmak</h1>
                  </div>

      <form class="user" @submit.prevent="edersInsert">
  
         <div class="form-group">

          <div class="form-row">
            <textarea class="form-control" placeholder="ders_at_tm" v-model="form.ders_at_tm"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" placeholder="ders_at_ru" v-model="form.ders_at_ru"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" placeholder="ders_at_en" v-model="form.ders_at_en"></textarea>
          </div>
          <br>
        </div>
        <br>

        <div class="form-group">

          <div class="form-row">
            <textarea class="form-control" placeholder="mug_at_tm" v-model="form.mug_at_tm"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" placeholder="mug_at_ru" v-model="form.mug_at_ru"></textarea>
          </div>
          <br>
          <div class="form-row">
            <textarea class="form-control" placeholder="mug_at_en" v-model="form.mug_at_en"></textarea>
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
        ders_at_tm: null,
        ders_at_ru: null,
        ders_at_en: null,
        mug_at_tm: null,
        mug_at_ru: null,
        mug_at_en: null,
        
      },
      errors:{},
    }
  },

  methods:{
    
  edersInsert(){
       axios.post('/api/eders',this.form)
       .then(() => {
        this.$router.push({ name: 'eders'})
        Notification.success()
       })
       .catch(error =>this.errors = error.response.data.errors)
     },
  },


  }

</script>


<style type="text/css">

</style>
