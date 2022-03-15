

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-baslesik" class="btn btn-primary">baslesik gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">baslesik List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>at_tm</th>
                        <th>at_ru</th>
                        <th>at_en</th>
                        <th>dusundiris_tm</th>
                        <th>dusundiris_ru</th>
                        <th>dusundiris_en</th>
                        <th>Yyl</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="baslesik in filtersearch" :key="baslesik.id">
                        <td>{{ baslesik.at_tm }}</td>
                        <td>{{ baslesik.at_ru }}</td>
                        <td>{{ baslesik.at_en }}</td>
                        <td>{{ baslesik.dusundiris_tm }}</td>
                        <td>{{ baslesik.dusundiris_ru }}</td>
                        <td>{{ baslesik.dusundiris_en }}</td>
                        <td>{{ baslesik.yyl }}</td>
            <td>
   <router-link :to="{name: 'edit-baslesik', params:{id:baslesik.id}}" class="btn btn-sm btn-primary">Uytget</router-link>

 <a @click="deleteBaslesik(baslesik.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        baslesiks:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.baslesiks.filter(baslesik => {
         return baslesik.at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allBaslesik(){
      axios.get('/api/baslesik/')
      .then(({data}) => (this.baslesiks = data))
      .catch()
    },
  deleteBaslesik(id){
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
                axios.delete('/api/baslesik/'+id)
               .then(() => {
                this.baslesiks = this.baslesiks.filter(baslesik => {
                  return baslesik.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'baslesik'})
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
    this.allBaslesik();
  }


  }
</script>


<style type="text/css">

</style>
