

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-yarys" class="btn btn-primary">yarys gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">yarys List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>yarys_at_tm</th>
                        <th>yarys_at_ru</th>
                        <th>yarys_at_en</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="yarys in filtersearch" :key="yarys.id">
                        <td>{{ yarys.yarys_at_tm }}</td>
                        <td>{{ yarys.yarys_at_ru }}</td>
                        <td>{{ yarys.yarys_at_en }}</td>
            <td>

 <a @click="deleteYarys(yarys.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        yaryss:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.yaryss.filter(yarys => {
         return yarys.yarys_at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allYarys(){
      axios.get('/api/yarys/')
      .then(({data}) => (this.yaryss = data))
      .catch()
    },
  deleteYarys(id){
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
                axios.delete('/api/yarys/'+id)
               .then(() => {
                this.yaryss = this.yaryss.filter(yarys => {
                  return yarys.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'yarys'})
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
    this.allYarys();
  }


  }
</script>


<style type="text/css">

</style>
