

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-tazelik" class="btn btn-primary">Tazelik gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Tazelik List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>Photo</th>
                        <th>Gun</th>
                        <th>Ay</th>
                        <th>Yyl</th>
                        <th>Tema_TM</th>
                        <th>Dusundiris_TM</th>
                        <th>Tazelik_TM</th>
                        <th>Tema_RU</th>
                        <th>Dusundiris_RU</th>
                        <th>Tazelik_RU</th>
                        <th>Tema_EN</th>
                        <th>Dusundiris_EN</th>
                        <th>Tazelik_EN</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="tazelik in filtersearch" :key="tazelik.id">
                        <td><img :src="'/'+tazelik.photo" id="em_photo"></td>
                        <td>{{ tazelik.gun }}</td>
                        <td>{{ tazelik.ay }}</td>
                        <td>{{ tazelik.yyl }}</td>
                        <td>{{ tazelik.tema_tm }}</td>
                        <td>{{ tazelik.dusundiris_tm }}</td>
                        <td>{{ tazelik.tazelik_tm }}</td>
                        <td>{{ tazelik.tema_ru }}</td>
                        <td>{{ tazelik.dusundiris_ru }}</td>
                        <td>{{ tazelik.tazelik_ru }}</td>
                        <td>{{ tazelik.tema_en }}</td>
                        <td>{{ tazelik.dusundiris_en }}</td>
                        <td>{{ tazelik.tazelik_en }}</td>
            <td>
   <router-link :to="{name: 'edit-tazelik', params:{id:tazelik.id}}" class="btn btn-sm btn-primary">Uytget</router-link>

 <a @click="deleteTazelik(tazelik.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        tazeliks:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.tazeliks.filter(tazelik => {
         return tazelik.tazelik_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allTazelik(){
      axios.get('/api/tazelik/')
      .then(({data}) => (this.tazeliks = data))
      .catch()
    },
  deleteTazelik(id){
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
                axios.delete('/api/tazelik/'+id)
               .then(() => {
                this.tazeliks = this.tazeliks.filter(tazelik => {
                  return tazelik.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'tazelik'})
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
    this.allTazelik();
  }


  }
</script>


<style type="text/css">
  #em_photo{
    height: 40px;
    width: 40px;
  }
</style>
