

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-kafwebol" class="btn btn-primary">Kafwebol gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Kafwebol List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>kaf_photo</th>
                        <th>kaf_at_tm</th>
                        <th>kaf_at_ru</th>
                        <th>kaf_at_en</th>
                        <th>gysga_text_tm</th>
                        <th>gysga_text_ru</th>
                        <th>gysga_text_en</th>
                        <th>dusundiris_tm</th>
                        <th>dusundiris_ru</th>
                        <th>dusundiris_en</th>
                        <th>bol_photo</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="kafwebol in filtersearch" :key="kafwebol.id">
                        <td><img :src="'/'+kafwebol.kaf_photo" id="kaf_photo"></td>
                        <td>{{ kafwebol.kaf_at_tm }}</td>
                        <td>{{ kafwebol.kaf_at_ru }}</td>
                        <td>{{ kafwebol.kaf_at_en }}</td>
                        <td>{{ kafwebol.gysga_text_tm }}</td>
                        <td>{{ kafwebol.gysga_text_ru }}</td>
                        <td>{{ kafwebol.gysga_text_en }}</td>
                        <td>{{ kafwebol.dusundiris_tm }}</td>
                        <td>{{ kafwebol.dusundiris_ru }}</td>
                        <td>{{ kafwebol.dusundiris_en }}</td>
                        <td><img :src="'/'+kafwebol.bol_photo" id="bol_photo"></td>
            <td>
   <router-link :to="{name: 'edit-kafwebol', params:{id:kafwebol.id}}" class="btn btn-sm btn-primary">Uytget</router-link>

 <a @click="deleteKafwebol(kafwebol.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        kafwebols:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.kafwebols.filter(kafwebol => {
         return kafwebol.dusundiris_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allKafwebol(){
      axios.get('/api/kafwebol/')
      .then(({data}) => (this.kafwebols = data))
      .catch()
    },
  deleteKafwebol(id){
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
                axios.delete('/api/kafwebol/'+id)
               .then(() => {
                this.kafwebols = this.kafwebols.filter(kafwebol => {
                  return kafwebol.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'kafwebol'})
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
    this.allKafwebol();
  }


  }
</script>


<style type="text/css">
  #kaf_photo{
    height: 40px;
    width: 40px;
  }
  #bol_photo{
    height: 40px;
    width: 40px;
  }
</style>
