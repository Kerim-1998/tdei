

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-eders" class="btn btn-primary">eders gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">eders List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>ders_at_tm</th>
                        <th>ders_at_ru</th>
                        <th>ders_at_en</th>
                        <th>mug_at_tm</th>
                        <th>mug_at_ru</th>
                        <th>mug_at_en</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="eders in filtersearch" :key="eders.id">
                        <td>{{ eders.ders_at_tm }}</td>
                        <td>{{ eders.ders_at_ru }}</td>
                        <td>{{ eders.ders_at_en }}</td>
                        <td>{{ eders.mug_at_tm }}</td>
                        <td>{{ eders.mug_at_ru }}</td>
                        <td>{{ eders.mug_at_en }}</td>
            <td>
   <router-link :to="{name: 'edit-eders', params:{id:eders.id}}" class="btn btn-sm btn-primary">Uytget</router-link>

 <a @click="deleteEders(eders.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        ederss:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.ederss.filter(eders => {
         return eders.ders_at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allEders(){
      axios.get('/api/eders/')
      .then(({data}) => (this.ederss = data))
      .catch()
    },
  deleteEders(id){
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
                axios.delete('/api/eders/'+id)
               .then(() => {
                this.ederss = this.ederss.filter(eders => {
                  return eders.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'eders'})
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
    this.allEders();
  }


  }
</script>


<style type="text/css">

</style>
