<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="{{ asset('/front/images/logo.png')}}" rel="icon">
  <title>TDEI</title>
 <link rel="stylesheet" type="text/css" href="{{ asset('css/app.css')}}">

  <link href="{{ asset('backend/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">
  <link href="{{ asset('backend/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
  <link href="{{ asset('backend/css/ruang-admin.min.css')}}" rel="stylesheet">
</head>

<body id="page-top">
  <div id="app">


  <div id="wrapper">

    <!-- Sidebar -->
  <nav id="sidebar" v-show="$route.path === '/' || $route.path === '/register' || $route.path === '/forget' ? false : true " style="display:  none;">

    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon">
          <img src="{{ asset('/front/images/logo.png')}}">
        </div>
        <div class="sidebar-brand-text mx-3">TDEI</div>
      </a>
      <hr class="sidebar-divider my-0">
      <li class="nav-item active">
        <router-link class="nav-link" to="/tdeiadmin/home">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></router-link>
      </li>



      <hr class="sidebar-divider">
      <div class="sidebar-heading">
        Features
      </div>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap"
          aria-expanded="true" aria-controls="collapseBootstrap">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Index Carousel</span>
        </a>
        <div id="collapseBootstrap" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-carousel">Carousel gosmak</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/carousel">Ahli Carousel</router-link>

          </div>
        </div>
      </li>



<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap1"
          aria-expanded="true" aria-controls="collapseBootstrap1">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Tazelikler</span>
        </a>
        <div id="collapseBootstrap1" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-tazelik">Tazelik gosmak</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/tazelik">Ahli Tazelik</router-link>

          </div>
        </div>
      </li>




<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap2"
          aria-expanded="true" aria-controls="collapseBootstrap2">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Barada</span>
        </a>
        <div id="collapseBootstrap2" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-barada">Add Barada</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/barada">All Barada</router-link>

          </div>
        </div>
      </li>




<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap3"
          aria-expanded="true" aria-controls="collapseBootstrap3">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Kafwebol</span>
        </a>
        <div id="collapseBootstrap3" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-kafwebol">Add Kafwebol</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/kafwebol">All Kafwebol</router-link>

          </div>
        </div>
      </li>



<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap4"
          aria-expanded="true" aria-controls="collapseBootstrap4">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Kafmug</span>
        </a>
        <div id="collapseBootstrap4" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-kafmug">Add Kafmug</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/kafmug">All Kafmug</router-link>

          </div>
        </div>
      </li>



<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap44"
          aria-expanded="true" aria-controls="collapseBootstrap44">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Ugur</span>
        </a>
        <div id="collapseBootstrap44" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-ugur">Add Ugur</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/ugur">All Ugur</router-link>

          </div>
        </div>
      </li>


<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap5"
          aria-expanded="true" aria-controls="collapseBootstrap5">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Ugur File</span>
        </a>
        <div id="collapseBootstrap5" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-file">Add File</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/file">All File</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap6"
          aria-expanded="true" aria-controls="collapseBootstrap6">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Hyzamtlar</span>
        </a>
        <div id="collapseBootstrap6" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-hyzmat">Add Hyzmat</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/hyzmat">All Hyzmat</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap7"
          aria-expanded="true" aria-controls="collapseBootstrap7">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Mugallymlar Ustunlikleri</span>
        </a>
        <div id="collapseBootstrap7" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-mustun">Add Mugustun</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/mustun">All Mugustun</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap8"
          aria-expanded="true" aria-controls="collapseBootstrap8">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Olimp Atlary</span>
        </a>
        <div id="collapseBootstrap8" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-olimp">Add Olimp Atlary</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/olimp">All Olimp Atlary</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap9"
          aria-expanded="true" aria-controls="collapseBootstrap9">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Olimpiyadanyn yenijileri</span>
        </a>
        <div id="collapseBootstrap9" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-ustun">Add Olimpin yeniji</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/ustun">All Olimpin yeniji</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap10"
          aria-expanded="true" aria-controls="collapseBootstrap10">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Yarys atlary</span>
        </a>
        <div id="collapseBootstrap10" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-yarys">Add Yarys atlary</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/yarys">All Yarys atlary</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap11"
          aria-expanded="true" aria-controls="collapseBootstrap11">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Talyp atlary</span>
        </a>
        <div id="collapseBootstrap11" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-talyp">Add Talyp atlary</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/talyp">All Talyp atlary</router-link>

          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap12"
          aria-expanded="true" aria-controls="collapseBootstrap12">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Gelen habarlar</span>
        </a>
        <div id="collapseBootstrap12" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/habar">All Habarlar</router-link>

          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap13"
          aria-expanded="true" aria-controls="collapseBootstrap13">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Yyllar</span>
        </a>
        <div id="collapseBootstrap13" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-yyl">Add Yyl</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/yyl">All Yyl</router-link>

          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap19"
          aria-expanded="true" aria-controls="collapseBootstrap19">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Dalasgarler</span>
        </a>
        <div id="collapseBootstrap19" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-dalasgar">Add Dalasgar</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/dalasgar">All Dalasgarler</router-link>

          </div>
        </div>
      </li>



<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap14"
          aria-expanded="true" aria-controls="collapseBootstrap14">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Baslesikler</span>
        </a>
        <div id="collapseBootstrap14" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-baslesik">Add Baslesik</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/baslesik">All Baslesik</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap15"
          aria-expanded="true" aria-controls="collapseBootstrap15">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>EDusundiris</span>
        </a>
        <div id="collapseBootstrap15" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-edusundiris">Add EDusundiris</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/edusundiris">All EDusundiris</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap16"
          aria-expanded="true" aria-controls="collapseBootstrap16">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Eders</span>
        </a>
        <div id="collapseBootstrap16" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-eders">Add Eders</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/eders">All Eders</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap17"
          aria-expanded="true" aria-controls="collapseBootstrap17">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Tema</span>
        </a>
        <div id="collapseBootstrap17" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-tema">Add Tema</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/tema">All Tema</router-link>

          </div>
        </div>
      </li>

<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap18"
          aria-expanded="true" aria-controls="collapseBootstrap18">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>Tema File</span>
        </a>
        <div id="collapseBootstrap18" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">

   <router-link class="collapse-item" to="/tdeiadmin/store-temafile">Add Tema File</router-link>
   <router-link class="collapse-item" to="/tdeiadmin/temafile">All Tema File</router-link>

          </div>
        </div>
      </li>






      <hr class="sidebar-divider">
    </ul>
    <!-- Sidebar -->
 </nav>

    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">

        <!-- TopBar -->
<nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top" id="topbar" v-show="$route.path === '/' || $route.path === '/register' || $route.path === '/forget' ? false : true " style="display: none;">

        </nav>
        <!-- Topbar -->

        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
               <router-view></router-view>
        </div>
        <!---Container Fluid-->
      </div>

  <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>
              <b>Easy Learning</b>
            </span>
          </div>
        </div>
      </footer>
      <!-- Footer -->

    </div>

  </div>

  </div>

  <!-- Scroll to top -->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
  <script src="{{ asset('js/app.js')}}"></script>
  <script src="{{ asset('backend/vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{ asset('backend/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

   <script type="text/javascript">
     let token = localStorage.getItem('token');
     if (token) {
      $("#sidebar").css("display","");
      $("#topbar").css("display","");

     }
   </script>

  <script src="{{ asset('backend/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
  <script src="{{ asset('backend/js/ruang-admin.min.js')}}"></script>
  <script src="{{ asset('backend/vendor/chart.js/Chart.min.js')}}"></script>
  <script src="{{ asset('backend/js/demo/chart-area-demo.js')}}"></script>
</body>

</html>