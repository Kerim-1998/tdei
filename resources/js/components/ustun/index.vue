

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-ustun" class="btn btn-primary">ustun gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">ustun List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>photo</th>
                        <th>talyp_at_tm</th>
                        <th>talyp_at_ru</th>
                        <th>talyp_at_en</th>
                        <th>ders_tm</th>
                        <th>ders_ru</th>
                        <th>ders_en</th>
                        <th>orun_tm</th>
                        <th>orun_ru</th>
                        <th>orun_en</th>
                        <th>olimp_at_tm</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="ustun in filtersearch" :key="ustun.id">
                        <td><img :src="'/'+ustun.photo" id="em_photo"></td>
                        <td>{{ ustun.talyp_at_tm }}</td>
                        <td>{{ ustun.talyp_at_ru }}</td>
                        <td>{{ ustun.talyp_at_en }}</td>
                        <td>{{ ustun.ders_tm }}</td>
                        <td>{{ ustun.ders_ru }}</td>
                        <td>{{ ustun.ders_en }}</td>
                        <td>{{ ustun.orun_tm }}</td>
                        <td>{{ ustun.orun_ru }}</td>
                        <td>{{ ustun.orun_en }}</td>
                        <td>{{ ustun.olimp_at_tm }}</td>
            <td>

 <a @click="deleteUstun(ustun.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        ustuns:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.ustuns.filter(ustun => {
         return ustun.talyp_at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allUstun(){
      axios.get('/api/ustun/')
      .then(({data}) => (this.ustuns = data))
      .catch()
    },
  deleteUstun(id){
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
                axios.delete('/api/ustun/'+id)
               .then(() => {
                this.ustuns = this.ustuns.filter(ustun => {
                  return ustun.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'ustun'})
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
    this.allUstun();
  }


  }
</script>


<style type="text/css">
  #em_photo{
    height: 40px;
    width: 40px;
  }
</style>
