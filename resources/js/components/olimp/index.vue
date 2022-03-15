

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-olimp" class="btn btn-primary">Olimp gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Olimp List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>olimp_at_tm</th>
                        <th>olimp_at_ru</th>
                        <th>olimp_at_en</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="olimp in filtersearch" :key="olimp.id">
                        <td>{{ olimp.olimp_at_tm }}</td>
                        <td>{{ olimp.olimp_at_ru }}</td>
                        <td>{{ olimp.olimp_at_en }}</td>
            <td>
   <router-link :to="{name: 'edit-olimp', params:{id:olimp.id}}" class="btn btn-sm btn-primary">Uytget</router-link>

 <a @click="deleteOlimp(olimp.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        olimps:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.olimps.filter(olimp => {
         return olimp.olimp_at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allOlimp(){
      axios.get('/api/olimp/')
      .then(({data}) => (this.olimps = data))
      .catch()
    },
  deleteOlimp(id){
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
                axios.delete('/api/olimp/'+id)
               .then(() => {
                this.olimps = this.olimps.filter(olimp => {
                  return olimp.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'olimp'})
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
    this.allOlimp();
  }


  }
</script>


<style type="text/css">

</style>
