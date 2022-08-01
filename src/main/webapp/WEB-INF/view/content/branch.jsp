<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Apotek</title>

<jsp:include page="../../include/css-main.jsp"/>
</head>
<body class="hold-transition sidebar-mini">
<jsp:include page="../../include/sidebar-menu.jsp"/>
<jsp:include page="../../include/header.jsp"/>
<!-- Site wrapper -->
<div class="wrapper">

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Template</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Template</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

<!-- Default box -->
<div class="card">
<div class="card-header">
 <div class="card">
   <div class="card-header">
        <button type="button" id="add" class="btn btn-app"><i class="fa fa-plus fa-fw"></i>Tambah</button>
        <div class="card-tools">
        <form role="form" id="formSearch">
          <div class="input-group input-group-sm" style="width: 300px;">
            <input type="search" id="searchName" class="form-control float-right" placeholder="Cari Nama Cabang">
            <div class="input-group-append">
              <button type="button" class="btn btn-default searchPageAndSort">
                <i class="fas fa-search"></i>
              </button>
            </div>
          </div>
          </form>
        </div>
   </div>

   <!-- /.card-header -->
   <div class="card-body">

     <table id="example1" class="table table-bordered table-striped">
       <thead>
       <tr>
         <th>No</th>
         <th>Nama Cabang</th>
         <th>Alamat Cabang</th>
         <th>Status</th>
         <th>Aksi</th>
       </tr>
       </thead>
       <tbody>
             <c:if test="${branchList.size() == 0}">
                <tr><td colspan="15" class="nice-table-nodata">Cabang No found</td></tr>
            </c:if>
            <c:if test="${branchList.size() > 0}">
                <c:forEach var="branchList" items="${branchList}">
                   <tr id="${branchList.id}">
                     <td class="nice-table-left">${no}</td>
                     <td class="name">${branchList.name}</td>
                     <td class="address">${branchList.address}</td>
                     <td class="status">${branchList.status}</td>
                     <td>
                        <button type="button" class="edit" class="btn btn-default"><span class="fas fa-edit edit">Edit</span></button>
                     </td>
                  </tr>
                  <c:set var="no" value="${no+1}" />
                </c:forEach>
            </c:if>
       </tbody>
     </table>
</div>

   <!-- /.card-body -->
  <div class="card-body ">
  <c:set var="p" value="${number}" /> <%-- current page (1-based) --%>
  <c:set var="l" value="5" /> <%-- amount of page links to be displayed --%>
  <c:set var="r" value="${l /1}" /> <%-- minimum link range ahead/behind --%>
  <c:set var="t" value="${totalPage}" /> <%-- total amount of pages --%>

  <c:set var="begin" value="${((p - r) > 0 ? ((p - r) < (t - l + 1) ? (p - r) : (t - l)) : 0) + 1}" />
  <c:set var="end" value="${(p + r) < t ? ((p + r) > l ? (p + r) : l) : t}" />

    <div class="row">
        <div class="col-sm-12 col-md-9">
            <div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing ${beginDisplayItem } to ${endDisplayItem} of ${totalElement} branch</div>
        </div>
        <div class="col-sm-12 col-md-3">
            <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
                <ul class="pagination">

                   <c:if test="${number+1 != 1  }">
                   <li class="paginate_button page-item previous" id="paginate"><a href="javascript:changePage(${(number+1) - 1})" aria-controls="example2" data-dt-idx="0" tabindex="0" class="page-link"><</a></li>
                       </c:if>
                           <c:forEach begin="${begin-1}" end="${end-1}" var="page">

                                       <c:choose>
                                           <c:when test="${page+1 == number+1}">
                                           <li class="paginate_button page-item active" id="paginate"><a href="javascript:changePage(${page+1})" aria-controls="example2" data-dt-idx="2" tabindex="0" class="page-link">${page+1}</a></li>
                                           </c:when>
                                           <c:otherwise>
                                           <li class="paginate_button page-item" id="paginate"><a href="javascript:changePage(${page+1})" aria-controls="example2" data-dt-idx="2" tabindex="0" class="page-link">${page+1}</a></li>
                                           </c:otherwise>
                                       </c:choose>

                           </c:forEach>

                       <c:if test="${number+1 lt totalPage}">

                       <li class="paginate_button page-item next" ><a id="paginate" href="javascript:changePage(${(number+1) + 1})" aria-controls="example2" data-dt-idx="7" tabindex="0" class="page-link">></a></li>


                       </c:if>
            </div>
        </div>
    </div>
  </div>


      <!-- /.card -->
    </section>
    <!-- /.content -->
    </div>
<!-- /.content-wrapper -->
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>

<!-- Add or Edit Dialog -->
<div class="modal fade" id="modal-lg">
<div class="modal-dialog modal-lg">
  <div class="modal-content">
    <div class="modal-header">
      <h4 class="modal-title">Input Cabang</h4>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
<div class="modal-body">
    <form id="addform" role="form">
      <div class="card-body">
    <input id="rowID" name="rowID" type="hidden"/>
        <div id="tname" class="form-group">
          <label for="name">Nama Cabang</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Nama Cabang">
        </div>
        <div  id="taddress" class="form-group">
          <label for="address">Alamat Cabang</label>
          <input type="text" class="form-control" id="address" name="address" placeholder="Alamat Cabang">
        </div>
        <div id="tstatus" class="form-group">
          <label for="status">Status</label>
          <select class="form-control" id="status" name="status">
                <option value="">Please Select</option>
                <option value="true">Active</option>
                <option value="false">Inactive</option>
            </select>
        </div>
      </div>
   </div>
    <div class="modal-footer justify-content-between">
      <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
      <button type="submit" id="save" name="save" class="btn btn-primary">Simpan</button>
    </div>
    </form>
  </div>
  <!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<!-- ./wrapper -->
<jsp:include page="../../include/footer.jsp" />
<jsp:include page="../../include/js-main.jsp" />

<script type="text/javascript">
$(document).ready(function() {

$('#searchName').val(localStorage.getItem('searchName'));

$('#add').click(function () {
    $("#rowID").val(null);
    $("#name").val(null);
    $("#address").val(null);
    $("#status").val(true);

    $("#tname").show();
    $("#taddress").show();
    $("#tstatus").hide();

    $('#modal-lg').modal('show');
});
$('.edit').click(function () {
    $("#rowID").val($(this).parents("tr:first").attr("id"));
    $("#name").val($(this).parents("tr:first").children("td.name").text());
    $("#address").val($(this).parents("tr:first").children("td.address").text());
    $("#status").val($(this).parents("tr:first").children("td.status").text());

    $("#tname").show();
    $("#taddress").show();
    $("#tstatus").show();

    $('#modal-lg').modal('show');
});

$('#save').click(function () {
  $('#addform').validate({
    rules: {
      name: {
        required: true
      },
      address: {
        required: true
      },
      status: {
          required: true
        }
    },
    messages: {
      name: {
        required: "Masukan Nama Cabang"
      },
      address: {
        required: "Masukan Alamat Cabang"
      },
      status: {
          required: "Pilih status"
          }
    },

 submitHandler: function (form) {
    var id = $('#rowID').val();
    var name = $('#name').val();
  	var address = $('#address').val();
    var status = $('#status').val();

  	var data = {
  	    'id' : id,
  	    'name' : name,
  	    'address' : address,
  	    'status' : status
  	};

  	var request = $.ajax({
        url: '<c:url value="${view}/save"/>',
        timeout: 60000,
        datatype: 'json',
        contentType: 'application/json',
        type: 'post',
        data : JSON.stringify(data)
    });

    request.always(function () {
        $('#save').attr('disabled', true);
    });
    request.done(function (response) {

        $('#save').removeAttr('disabled');

        if(!response.success){//jika gagal save
            alert(response.message);
        }else{
            alert("Berhasil disimpan!"); //jika berhasil save
            window.location.href = '<c:url value="${view}/list"/>';
        }

    });
    request.fail(function (jqXHR, textStatus) {

        $('#save').removeAttr('disabled');
    });
 },
  errorElement: 'span',
     errorPlacement: function (error, element) {
       error.addClass('invalid-feedback');
       element.closest('.form-group').append(error);
     },
     highlight: function (element, errorClass, validClass) {
       $(element).addClass('is-invalid');
     },
     unhighlight: function (element, errorClass, validClass) {
       $(element).removeClass('is-invalid');
     }
});
});

$('.searchPageAndSort').click(function search() {
var name = $('#searchName').val();
    if(name==''){
     name='';
    }

    var request = $.ajax({
        timeout: 60000,
        datatype: 'json',
        contentType: 'application/json',
        type: 'POST',
        url: '<c:url value="${view}/list?search="/>'+name,
        success: function(response){
            window.location.href = '<c:url value="${view}/list?search="/>'+name;
        }
    });
    localStorage.setItem('searchName',$('#searchName').val());
});
});

var pageNumber;
var searchName;
function changePage(pageNumber) {
    var name = $('#searchName').val();
        if(name==''){
            searchName = "";
        }else{
            searchName = "&search="+name;
        }
        if (pageNumber==''){
            pageNumber=0;
        }
    var request = $.ajax({
            timeout: 60000,
            datatype: 'json',
            contentType: 'application/json',
            type: 'POST',
            url: '<c:url value="${view}/list?page="/>'+pageNumber+searchName,
            success: function(response){
                window.location.href = '<c:url value="${view}/list?page="/>'+pageNumber+searchName;
            }
        });


}


</script>
</body>
</html>