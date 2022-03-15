

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-talyp" class="btn btn-primary">talyp gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">talyp List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>photo</th>
                        <th>at_tm</th>
                        <th>at_ru</th>
                        <th>at_en</th>
                        <th>kurs_tm</th>
                        <th>kurs_ru</th>
                        <th>kurs_en</th>
                        <th>ders_tm</th>
                        <th>ders_ru</th>
                        <th>ders_en</th>
                        <th>yarys_at_tm</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="talyp in filtersearch" :key="talyp.id">
                        <td><img :src="'/'+talyp.photo" id="em_photo"></td>
                        <td>{{ talyp.at_tm }}</td>
                        <td>{{ talyp.at_ru }}</td>
                        <td>{{ talyp.at_en }}</td>
                        <td>{{ talyp.kurs_tm }}</td>
                        <td>{{ talyp.kurs_ru }}</td>
                        <td>{{ talyp.kurs_en }}</td>
                        <td>{{ talyp.ders_tm }}</td>
                        <td>{{ talyp.ders_ru }}</td>
                        <td>{{ talyp.ders_en }}</td>
                        <td>{{ talyp.yarys_at_tm }}</td>
            <td>

 <a @click="deleteTalyp(talyp.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        talyps:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.talyps.filter(talyp => {
         return talyp.at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allTalyp(){
      axios.get('/api/talyp/')
      .then(({data}) => (this.talyps = data))
      .catch()
    },
  deleteTalyp(id){
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
                axios.delete('/api/talyp/'+id)
               .then(() => {
                this.talyps = this.talyps.filter(talyp => {
                  return talyp.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'talyp'})
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
    this.allTalyp();
  }


  }
</script>


<style type="text/css">
  #em_photo{
    height: 40px;
    width: 40px;
  }
</style>
