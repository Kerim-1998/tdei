

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-temafile" class="btn btn-primary">temafile gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">temafile List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>temafile</th>
                        <th>temafile_at_tm</th>
                        <th>temafile_at_ru</th>
                        <th>temafile_at_en</th>
                        <th>tema_at</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="temafile in filtersearch" :key="temafile.id">
                        <td>{{ temafile.temafile }}</td>
                        <td>{{ temafile.temafile_at_tm }}</td>
                        <td>{{ temafile.temafile_at_ru }}</td>
                        <td>{{ temafile.temafile_at_en }}</td>
                        <td>{{ temafile.tema_tm }}</td>
            <td>

 <a @click="deleteTemafile(temafile.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        temafiles:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.temafiles.filter(temafile => {
         return temafile.temafile_at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allTemafile(){
      axios.get('/api/temafile/')
      .then(({data}) => (this.temafiles = data))
      .catch()
    },
  deleteTemafile(id){
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
                axios.delete('/api/temafile/'+id)
               .then(() => {
                this.temafiles = this.temafiles.filter(temafile => {
                  return temafile.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'temafile'})
               })
                Swal.fire(
                  'Deleted!',
                  'Your temafile has been deleted.',
                  'success'
                )
              }
            })

  }

  },
  created(){
    this.allTemafile();
  }


  }
</script>


