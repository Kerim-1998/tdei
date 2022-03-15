

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-edusundiris" class="btn btn-primary">edusundiris gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">edusundiris List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>dusundiris_tm</th>
                        <th>dusundiris_ru</th>
                        <th>dusundiris_en</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="edusundiris in filtersearch" :key="edusundiris.id">
                        <td>{{ edusundiris.dusundiris_tm }}</td>
                        <td>{{ edusundiris.dusundiris_ru }}</td>
                        <td>{{ edusundiris.dusundiris_en }}</td>
            <td>
   <router-link :to="{name: 'edit-edusundiris', params:{id:edusundiris.id}}" class="btn btn-sm btn-primary">Uytget</router-link>

 <a @click="deleteEdusundiris(edusundiris.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        edusundiriss:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.edusundiriss.filter(edusundiris => {
         return edusundiris.dusundiris_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allEdusundiris(){
      axios.get('/api/edusundiris/')
      .then(({data}) => (this.edusundiriss = data))
      .catch()
    },
  deleteEdusundiris(id){
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
                axios.delete('/api/edusundiris/'+id)
               .then(() => {
                this.edusundiriss = this.edusundiriss.filter(edusundiris => {
                  return edusundiris.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'edusundiris'})
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
    this.allEdusundiris();
  }


  }
</script>


<style type="text/css">

</style>
