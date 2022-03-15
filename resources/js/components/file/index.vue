

<template>

  <div>

 <div class="row">
  <router-link to="/tdeiadmin/store-file" class="btn btn-primary">File gosmak </router-link>

 </div>
<br>
   <input type="text" v-model="searchTerm" class="form-control" style="width: 300px;" placeholder="Gozleg">


<br>

   <div class="row">
            <div class="col-lg-12 mb-4">
              <!-- Simple Tables -->
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">File List</h6>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>file</th>
                        <th>file_at_tm</th>
                        <th>file_at_ru</th>
                        <th>file_at_en</th>
                        <th>ugur_at</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="file in filtersearch" :key="file.id">
                        <td>{{ file.file }}</td>
                        <td>{{ file.file_at_tm }}</td>
                        <td>{{ file.file_at_ru }}</td>
                        <td>{{ file.file_at_en }}</td>
                        <td>{{ file.ugur_at_tm }}</td>
            <td>

 <a @click="deleteFile(file.id)" class="btn btn-sm btn-danger"><font color="#ffffff">Poz</font></a>
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
        files:[],
        searchTerm:''
      }
    },
    computed:{
      filtersearch(){
      return this.files.filter(file => {
         return file.file_at_tm.match(this.searchTerm)
      })
      }
    },

  methods:{
    allFile(){
      axios.get('/api/file/')
      .then(({data}) => (this.files = data))
      .catch()
    },
  deleteFile(id){
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
                axios.delete('/api/file/'+id)
               .then(() => {
                this.files = this.files.filter(file => {
                  return file.id != id
                })
               })
               .catch(() => {
                this.$router.push({name: 'file'})
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
    this.allFile();
  }


  }
</script>


<style type="text/css">
  #em_photo{
    height: 40px;
    width: 40px;
  }
</style>
