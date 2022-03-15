

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-tema" class="btn btn-primary">tema gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">tema List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>tema_tm</th>
                        <th>tema_ru</th>
                        <th>tema_en</th>
                        <th>ders_at_tm</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="tema in filtersearch" :key="tema.id">
                        <td>{{ tema.tema_tm }}</td>
                        <td>{{ tema.tema_ru }}</td>
                        <td>{{ tema.tema_en }}</td>
                        <td>{{ tema.ders_at_tm }}</td>
            <td>

 <a @click="deleteTema(tema.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        this.$router.push({name: '/tdeiadmin'})
      }
    },
    data(){
      return{
        temas:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.temas.filter(tema => {
         return tema.tema_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allTema(){
      axios.get('/api/tema/')
      .then(({data}) => (this.temas = data))
      .catch()
    },
  deleteTema(id){
             Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
              if (result.value) {
                axios.delete('/api/tema/'+id)
               .then(() => {
                this.temas = this.temas.filter(tema => {
                  return tema.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'tema'})
               })
                Swal.fire(
                  'Deleted!',
                  'Your file has been deleted.',
                  'success'
                )
              }
            })

  }

  },
  created(){
    this.allTema();
  }


  }
</script>


<style type="text/css">
  #em_photo{
    height: 40px;
    width: 40px;
  }
</style>
