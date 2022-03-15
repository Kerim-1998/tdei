

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-ugur" class="btn btn-primary">Ugur gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Ugur List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>ugur_at_tm</th>
                        <th>ugur_at_ru</th>
                        <th>ugur_at_en</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="ugur in filtersearch" :key="ugur.id">
                        <td>{{ ugur.ugur_at_tm }}</td>
                        <td>{{ ugur.ugur_at_ru }}</td>
                        <td>{{ ugur.ugur_at_en }}</td>
            <td>
   <router-link :to="{name: 'edit-ugur', params:{id:ugur.id}}" class="btn btn-sm btn-primary">Uytget</router-link>

 <a @click="deleteUgur(ugur.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        ugurs:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.ugurs.filter(ugur => {
         return ugur.ugur_at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allUgur(){
      axios.get('/api/ugur/')
      .then(({data}) => (this.ugurs = data))
      .catch()
    },
  deleteUgur(id){
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
                axios.delete('/api/ugur/'+id)
               .then(() => {
                this.ugurs = this.ugurs.filter(ugur => {
                  return ugur.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'ugur'})
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
    this.allUgur();
  }


  }
</script>


<style type="text/css">

</style>
