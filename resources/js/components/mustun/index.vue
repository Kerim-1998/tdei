

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-mustun" class="btn btn-primary">mustun gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">mustun List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>patent_photo</th>
                        <th>patent_ady_tm</th>
                        <th>patent_ady_ru</th>
                        <th>patent_ady_en</th>
                        <th>mug_ady_tm</th>
                        <th>mug_ady_ru</th>
                        <th>mug_ady_en</th>
                        <th>hunar_tm</th>
                        <th>hunar_ru</th>
                        <th>hunar_en</th>
                        <th>dusundiris_tm</th>
                        <th>dusundiris_ru</th>
                        <th>dusundiris_en</th>
                        <th>patent_photo1</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="mustun in filtersearch" :key="mustun.id">
                        <td><img :src="'/'+mustun.patent_photo" id="patent_photo"></td>
                        <td>{{ mustun.patent_ady_tm }}</td>
                        <td>{{ mustun.patent_ady_ru }}</td>
                        <td>{{ mustun.patent_ady_en }}</td>
                        <td>{{ mustun.mug_ady_tm }}</td>
                        <td>{{ mustun.mug_ady_ru }}</td>
                        <td>{{ mustun.mug_ady_en }}</td>
                        <td>{{ mustun.hunar_tm }}</td>
                        <td>{{ mustun.hunar_ru }}</td>
                        <td>{{ mustun.hunar_en }}</td>
                        <td>{{ mustun.dusundiris_tm }}</td>
                        <td>{{ mustun.dusundiris_ru }}</td>
                        <td>{{ mustun.dusundiris_en }}</td>
                        <td><img :src="'/'+mustun.patent_photo1" id="patent_photo1"></td>
            <td>

 <a @click="deleteMustun(mustun.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        mugustuns:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.mugustuns.filter(mustun => {
         return mustun.dusundiris_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allMustun(){
      axios.get('/api/mustun/')
      .then(({data}) => (this.mugustuns = data))
      .catch()
    },
  deleteMustun(id){
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
                axios.delete('/api/mustun/'+id)
               .then(() => {
                this.mugustuns = this.mugustuns.filter(mustun => {
                  return mustun.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'mustun'})
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
    this.allMustun();
  }


  }
</script>


<style type="text/css">
  #patent_photo{
    height: 40px;
    width: 40px;
  }
  #patent_photo1{
    height: 40px;
    width: 40px;
  }
</style>
