
<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-hyzmat" class="btn btn-primary">Hyzmat gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">

<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Hyzmat List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>Photo</th>
                        <th>hyz_at_tm</th>
                        <th>hyz_at_ru</th>
                        <th>hyz_at_en</th>
                        <th>link</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="hyzmat in filtersearch" :key="hyzmat.id">
                        <td><img :src="'/'+hyzmat.photo" id="em_photo"></td>
                        <td>{{ hyzmat.hyz_at_tm }}</td>
                        <td>{{ hyzmat.hyz_at_ru }}</td>
                        <td>{{ hyzmat.hyz_at_en }}</td>
                        <td>{{ hyzmat.link }}</td>
            <td>
 <a @click="deleteHyzmat(hyzmat.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        hyzmats:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.hyzmats.filter(hyzmat => {
         return hyzmat.hyz_at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allHyzmat(){
      axios.get('/api/hyzmat/')
      .then(({data}) => (this.hyzmats = data))
      .catch()
    },
  deleteHyzmat(id){
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
                axios.delete('/api/hyzmat/'+id)
               .then(() => {
                this.hyzmats = this.hyzmats.filter(hyzmat => {
                  return hyzmat.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'hyzmat'})
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
    this.allHyzmat();
  }


  }
</script>


<style type="text/css">
  #em_photo{
    height: 40px;
    width: 40px;
  }
</style>
