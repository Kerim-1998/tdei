

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-yyl" class="btn btn-primary">yyl gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">yyl List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>yyl</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="yyl in filtersearch" :key="yyl.id">
                        <td>{{ yyl.yyl }}</td>
            <td>

 <a @click="deleteYyl(yyl.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        yyls:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.yyls.filter(yyl => {
         return yyl.yyl.match(this.searchTerm)
      })
      }
    },

  methods:{
    allYyl(){
      axios.get('/api/yyl/')
      .then(({data}) => (this.yyls = data))
      .catch()
    },
  deleteYyl(id){
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
                axios.delete('/api/yyl/'+id)
               .then(() => {
                this.yyls = this.yyls.filter(yyl => {
                  return yyl.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'yyl'})
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
    this.allYyl();
  }


  }
</script>


<style type="text/css">

</style>
