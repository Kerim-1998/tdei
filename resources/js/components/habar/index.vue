

<template>

  <div>


<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">
<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Habar List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>at</th>
                        <th>email</th>
                        <th>tema</th>
                        <th>phone</th>
                        <th>message</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="habar in filtersearch" :key="habar.id">
                        <td>{{ habar.at }}</td>
                        <td>{{ habar.email }}</td>
                        <td>{{ habar.tema }}</td>
                        <td>{{ habar.phone }}</td>
                        <td>{{ habar.message }}</td>
            <td>
 <a @click="deleteHabar(habar.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        habars:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.habars.filter(habar => {
         return habar.at.match(this.searchTerm)
      })
      }
    },

  methods:{
    allHabar(){
      axios.get('/api/habar/')
      .then(({data}) => (this.habars = data))
      .catch()
    },
  deleteHabar(id){
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
                axios.delete('/api/habar/'+id)
               .then(() => {
                this.habars = this.habars.filter(habar => {
                  return habar.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'habar'})
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
    this.allHabar();
  }


  }
</script>


<style type="text/css">

</style>
