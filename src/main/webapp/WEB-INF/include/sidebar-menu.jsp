<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>

  <!-- Main Sidebar Container -->
   <aside class="main-sidebar sidebar-dark-primary elevation-4">
     <!-- Brand Logo -->
     <a href="../../index3.html" class="brand-link">
       <img src="/assets/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
       <span class="brand-text font-weight-light">Apotek</span>
     </a>
       <!-- SidebarSearch Form -->
       <div class="form-inline">
         <div class="input-group"data-widget="sidebar-search">
           <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
           <div class="input-group-append">
             <button class="btn btn-sidebar">
               <i class="fas fa-search fa-fw"></i>
             </button>
           </div>
         </div>
       </div>

       <!-- Sidebar Menu -->
       <nav class="mt-2">
         <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
           <!-- Add icons to the links using the .nav-icon class
                with font-awesome or any other icon font library -->
           <li class="nav-item">
             <a href="../widgets.html" class="nav-link">
               <i class="nav-icon fas fa-tachometer-alt"></i>
               <p>
                 Dashboard
               </p>
             </a>
           </li>
           <li class="nav-item">
             <a href="#" class="nav-link">
               <i class="nav-icon fas fa-copy"></i>
               <p>
                 Master Data
                 <i class="fas fa-angle-left right"></i>
               </p>
             </a>
             <ul class="nav nav-treeview">
               <li class="nav-item">
                 <a href="../layout/top-nav.html" class="nav-link">
                   <i class="far fa-circle nav-icon"></i>
                   <p>Branch</p>
                 </a>
               </li>
               <li class="nav-item">
                 <a href="../layout/top-nav-sidebar.html" class="nav-link">
                   <i class="far fa-circle nav-icon"></i>
                   <p>Data Kategori</p>
                 </a>
               </li>
               <li class="nav-item">
                 <a href="../layout/boxed.html" class="nav-link">
                   <i class="far fa-circle nav-icon"></i>
                   <p>Data Obat</p>
                 </a>
               </li>
               <li class="nav-item">
                 <a href="../layout/fixed-sidebar.html" class="nav-link">
                   <i class="far fa-circle nav-icon"></i>
                   <p>Gudang</p>
                 </a>
               </li>
               <li class="nav-item">
                 <a href="../layout/fixed-sidebar-custom.html" class="nav-link">
                   <i class="far fa-circle nav-icon"></i>
                   <p>Lokasi</small></p>
                 </a>
               </li>
               <li class="nav-item">
                 <a href="../layout/fixed-topnav.html" class="nav-link">
                   <i class="far fa-circle nav-icon"></i>
                   <p>Rak</p>
                 </a>
               </li>
             </ul>
           </li>

           <li class="nav-item">
             <a href="#" class="nav-link">
               <i class="nav-icon fas fa-table"></i>
               <p>
                 Setting User
                 <i class="right fas fa-angle-left"></i>
               </p>
             </a>
             <ul class="nav nav-treeview">
               <li class="nav-item">
                 <a href="../charts/chartjs.html" class="nav-link">
                   <i class="far fa-circle nav-icon"></i>
                   <p>User</p>
                 </a>
               </li>
               <li class="nav-item">
                 <a href="../charts/flot.html" class="nav-link">
                   <i class="far fa-circle nav-icon"></i>
                   <p>User Assignment</p>
                 </a>
               </li>
             </ul>
           </li>

           <li class="nav-item">
             <a href="../widgets.html" class="nav-link">
               <i class="nav-icon fas fa-edit"></i>
               <p>
                 Transaksi
               </p>
             </a>
           </li>

           <li class="nav-item">
            <a href="../widgets.html" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Stock
              </p>
            </a>
          </li>

          <li class="nav-item">
              <a href="../widgets.html" class="nav-link">
                <i class="nav-icon fas fa-book"></i>
                <p>
                  Laporan
                </p>
              </a>
            </li>

         </ul>
       </nav>
       <!-- /.sidebar-menu -->
     </div>
     <!-- /.sidebar -->
   </aside>