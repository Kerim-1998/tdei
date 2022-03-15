

<template>

  <div>

 <div class="row">
  <router-link to="/store-carousel" class="btn btn-primary">Carousel gosmak</router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozlemek">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Carousel List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>Photo</th>
                        <th>h1texttm</th>
                        <th>h1textru</th>
                        <th>h1texten</th>
                        <th>spantexttm</th>
                        <th>spantextru</th>
                        <th>spantexten</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="carousel in filtersearch" :key="carousel.id">

                        <td><img :src="'/'+carousel.photo" id="em_photo"></td>
                        <td> {{ carousel.h1texttm }} </td>
                        <td> {{ carousel.h1textru }} </td>
                        <td> {{ carousel.h1texten }} </td>
                        <td> {{ carousel.spantexttm }} </td>
                        <td> {{ carousel.spantextru }} </td>
                        <td> {{ carousel.spantexten }} </td>

            <td>
   <router-link :to="{name: 'edit-carousel', params:{id:carousel.id}}" class="btn btn-sm btn-primary">Uyget</router-link>

 <a @click="deleteCarousel(carousel.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
            </td>
                      </tr>

                    </tbody>
                  </table>
                </div>
                <div class="card-footer"></div>
              </div>
            </div>
          </div>
          <!--Row-->



  </div>


</template>



<script type="text/javascript">

  export default {
    created(){
      if (!User.loggedIn()) {
        this.$router.push({name: '/'})
      }
    },
    data(){
      return{
        carousels:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.carousels.filter(carousel => {
         return carousel.h1texttm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allCarousel(){
      axios.get('/api/carousel/')
      .then(({data}) => (this.carousels = data))
      .catch()
    },
  deleteCarousel(id){
             Swal.fire({
              title: 'Are you sure?',
              text: "Yzyna gaytaryp bolmayar",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Hawa poz'
            }).then((result) => {
              if (result.value) {
                axios.delete('/api/carousel/'+id)
               .then(() => {
                this.carousels = this.carousels.filter(carousel => {
                  return carousel.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'carousel'})
               })
                Swal.fire(
                  'Pozuldy!',
                  'Your file has been deleted.',
                  'success'
                )
              }
            })

  }

  },
  created(){
    this.allCarousel();
  }


  }
</script>


<style type="text/css">
  #em_photo{
    height: 40px;
    width: 40px;
  }
</style>
