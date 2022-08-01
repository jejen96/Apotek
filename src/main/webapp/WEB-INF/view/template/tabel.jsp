<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> --%>
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
                            <span id="filterbuttons" class="btn btn-app"><i class="fa fa-filter fa-fw"></i>Filter</span>
                            <span id="addbutton" class="btn btn-app"><i class="fa fa-plus fa-fw"></i>Add New</span>
                       </div>

                       <!-- /.card-header -->
                       <div class="card-body">
                         <table id="example1" class="table table-bordered table-striped">
                           <thead>
                           <tr>
                             <th>Rendering engine</th>
                             <th>Browser</th>
                             <th>Platform(s)</th>
                             <th>Engine version</th>
                             <th>CSS grade</th>
                           </tr>
                           </thead>
                           <tbody>
                           <tr>
                             <td>Trident</td>
                             <td>Internet
                               Explorer 4.0
                             </td>
                             <td>Win 95+</td>
                             <td> 4</td>
                             <td>X</td>
                           </tr>
                           <tr>
                             <td>Trident</td>
                             <td>Internet
                               Explorer 5.0
                             </td>
                             <td>Win 95+</td>
                             <td>5</td>
                             <td>C</td>
                           </tr>
                           <tr>
                             <td>Trident</td>
                             <td>Internet
                               Explorer 5.5
                             </td>
                             <td>Win 95+</td>
                             <td>5.5</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Trident</td>
                             <td>Internet
                               Explorer 6
                             </td>
                             <td>Win 98+</td>
                             <td>6</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Trident</td>
                             <td>Internet Explorer 7</td>
                             <td>Win XP SP2+</td>
                             <td>7</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Trident</td>
                             <td>AOL browser (AOL desktop)</td>
                             <td>Win XP</td>
                             <td>6</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Firefox 1.0</td>
                             <td>Win 98+ / OSX.2+</td>
                             <td>1.7</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Firefox 1.5</td>
                             <td>Win 98+ / OSX.2+</td>
                             <td>1.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Firefox 2.0</td>
                             <td>Win 98+ / OSX.2+</td>
                             <td>1.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Firefox 3.0</td>
                             <td>Win 2k+ / OSX.3+</td>
                             <td>1.9</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Camino 1.0</td>
                             <td>OSX.2+</td>
                             <td>1.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Camino 1.5</td>
                             <td>OSX.3+</td>
                             <td>1.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Netscape 7.2</td>
                             <td>Win 95+ / Mac OS 8.6-9.2</td>
                             <td>1.7</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Netscape Browser 8</td>
                             <td>Win 98SE+</td>
                             <td>1.7</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Netscape Navigator 9</td>
                             <td>Win 98+ / OSX.2+</td>
                             <td>1.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.0</td>
                             <td>Win 95+ / OSX.1+</td>
                             <td>1</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.1</td>
                             <td>Win 95+ / OSX.1+</td>
                             <td>1.1</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.2</td>
                             <td>Win 95+ / OSX.1+</td>
                             <td>1.2</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.3</td>
                             <td>Win 95+ / OSX.1+</td>
                             <td>1.3</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.4</td>
                             <td>Win 95+ / OSX.1+</td>
                             <td>1.4</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.5</td>
                             <td>Win 95+ / OSX.1+</td>
                             <td>1.5</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.6</td>
                             <td>Win 95+ / OSX.1+</td>
                             <td>1.6</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.7</td>
                             <td>Win 98+ / OSX.1+</td>
                             <td>1.7</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Mozilla 1.8</td>
                             <td>Win 98+ / OSX.1+</td>
                             <td>1.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Seamonkey 1.1</td>
                             <td>Win 98+ / OSX.2+</td>
                             <td>1.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Gecko</td>
                             <td>Epiphany 2.20</td>
                             <td>Gnome</td>
                             <td>1.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Webkit</td>
                             <td>Safari 1.2</td>
                             <td>OSX.3</td>
                             <td>125.5</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Webkit</td>
                             <td>Safari 1.3</td>
                             <td>OSX.3</td>
                             <td>312.8</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Webkit</td>
                             <td>Safari 2.0</td>
                             <td>OSX.4+</td>
                             <td>419.3</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Webkit</td>
                             <td>Safari 3.0</td>
                             <td>OSX.4+</td>
                             <td>522.1</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Webkit</td>
                             <td>OmniWeb 5.5</td>
                             <td>OSX.4+</td>
                             <td>420</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Webkit</td>
                             <td>iPod Touch / iPhone</td>
                             <td>iPod</td>
                             <td>420.1</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Webkit</td>
                             <td>S60</td>
                             <td>S60</td>
                             <td>413</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Opera 7.0</td>
                             <td>Win 95+ / OSX.1+</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Opera 7.5</td>
                             <td>Win 95+ / OSX.2+</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Opera 8.0</td>
                             <td>Win 95+ / OSX.2+</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Opera 8.5</td>
                             <td>Win 95+ / OSX.2+</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Opera 9.0</td>
                             <td>Win 95+ / OSX.3+</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Opera 9.2</td>
                             <td>Win 88+ / OSX.3+</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Opera 9.5</td>
                             <td>Win 88+ / OSX.3+</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Opera for Wii</td>
                             <td>Wii</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Nokia N800</td>
                             <td>N800</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Presto</td>
                             <td>Nintendo DS browser</td>
                             <td>Nintendo DS</td>
                             <td>8.5</td>
                             <td>C/A<sup>1</sup></td>
                           </tr>
                           <tr>
                             <td>KHTML</td>
                             <td>Konqureror 3.1</td>
                             <td>KDE 3.1</td>
                             <td>3.1</td>
                             <td>C</td>
                           </tr>
                           <tr>
                             <td>KHTML</td>
                             <td>Konqureror 3.3</td>
                             <td>KDE 3.3</td>
                             <td>3.3</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>KHTML</td>
                             <td>Konqureror 3.5</td>
                             <td>KDE 3.5</td>
                             <td>3.5</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Tasman</td>
                             <td>Internet Explorer 4.5</td>
                             <td>Mac OS 8-9</td>
                             <td>-</td>
                             <td>X</td>
                           </tr>
                           <tr>
                             <td>Tasman</td>
                             <td>Internet Explorer 5.1</td>
                             <td>Mac OS 7.6-9</td>
                             <td>1</td>
                             <td>C</td>
                           </tr>
                           <tr>
                             <td>Tasman</td>
                             <td>Internet Explorer 5.2</td>
                             <td>Mac OS 8-X</td>
                             <td>1</td>
                             <td>C</td>
                           </tr>
                           <tr>
                             <td>Misc</td>
                             <td>NetFront 3.1</td>
                             <td>Embedded devices</td>
                             <td>-</td>
                             <td>C</td>
                           </tr>
                           <tr>
                             <td>Misc</td>
                             <td>NetFront 3.4</td>
                             <td>Embedded devices</td>
                             <td>-</td>
                             <td>A</td>
                           </tr>
                           <tr>
                             <td>Misc</td>
                             <td>Dillo 0.8</td>
                             <td>Embedded devices</td>
                             <td>-</td>
                             <td>X</td>
                           </tr>
                           <tr>
                             <td>Misc</td>
                             <td>Links</td>
                             <td>Text only</td>
                             <td>-</td>
                             <td>X</td>
                           </tr>
                           <tr>
                             <td>Misc</td>
                             <td>Lynx</td>
                             <td>Text only</td>
                             <td>-</td>
                             <td>X</td>
                           </tr>
                           <tr>
                             <td>Misc</td>
                             <td>IE Mobile</td>
                             <td>Windows Mobile 6</td>
                             <td>-</td>
                             <td>C</td>
                           </tr>
                           <tr>
                             <td>Misc</td>
                             <td>PSP browser</td>
                             <td>PSP</td>
                             <td>-</td>
                             <td>C</td>
                           </tr>
                           <tr>
                             <td>Other browsers</td>
                             <td>All others</td>
                             <td>-</td>
                             <td>-</td>
                             <td>U</td>
                           </tr>
                           </tbody>
                           <tfoot>
                           <tr>
                             <th>Rendering engine</th>
                             <th>Browser</th>
                             <th>Platform(s)</th>
                             <th>Engine version</th>
                             <th>CSS grade</th>
                           </tr>
                           </tfoot>
                         </table>
                       </div>
                       <!-- /.card-body -->

                        <s:if test="showPaginationLinks == true">
                            <div class="row">
                                 <div class="col-sm-12 col-md-9">
                                    <div id="card">
                                     <div class="card-header">
                                        <s:if test="merchantList.size() > 0">
                                               Showing <s:property value="1 + (page * displayItem)" /> to <s:property value="endDisplayItem" /> of <s:property value="totalData" /> merchant
                                        </s:if>
                                      </div>
                                    </div>
                                 </div>

                               <div id="card">
                                <div class="card-header">
                                 <div class="btn-group">
                                     <s:if test="showFirstLink == true"><button type="button" class="btn btn-block btn-default" onclick="gotoPage(0)">First</button></s:if>
                                     <s:if test="showPreviousLink == true"><button type="button" class="btn btn-default" onclick="gotoPage(<s:property value="page-1")" /></button></s:if>
                                            <s:iterator value="digitPaginationLinks">
                                                <s:if test="flagCurrentPage == true">
                                                    <button type="button" class="btn btn-default" ><s:property value="pageNumber" /></span></button>
                                                </s:if>
                                                <s:else>
                                                    <button type="button" class="btn btn-default" onclick="gotoPage(<s:property value="page+1")" /><s:property value="pageNumber" /></button>
                                                </s:else>
                                            </s:iterator>
                                     <s:if test="showNextLink == true"><button type="button" class="btn btn-default" onclick="gotoPage(<s:property value="page+1")" /></button></s:if>
                                     <s:if test="showLastLink == true"><button type="button" class="btn btn-default" onclick="gotoPage(<s:property value="totalPage-1")"/>Last</button></s:if>
                                 </div>
                               </div>
                              </div>
                            </div>
                        </s:if>

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
<!-- ./wrapper -->
<jsp:include page="../../include/footer.jsp" />
<jsp:include page="../../include/js-main.jsp" />

<script>

</script>

</body>
</html>