<%-- 
    Document   : MoviesAdd
    Created on : Sep 30, 2023, 10:02:00 PM
    Author     : DELL
--%>

<%@include file="MenuAdmin.jsp" %>

<div class="animated fadeIn">


    <div class="row">


        <div class="col-lg-12">
            <div class="card">
                <div class="card-header text-center">
                    <strong>Add Category</strong> 
                </div>
                <div class="card-body card-block">
                    <form action="posterCategory" method="post" class="form-horizontal">

                        <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input"
                                                             class=" form-control-label">Category Name</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                name="categorytxt" placeholder="Name" class="form-control"></div>
                        </div>

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary btn-sm">
                                <i class="fa fa-dot-circle-o"></i> Submit
                            </button>
                            <button type="reset" class="btn btn-danger btn-sm">
                                <i class="fa fa-ban"></i> Reset
                            </button>
                        </div>

                    </form>
                </div>

            </div>

            <div class="table-stats order-table ov-h">
                <table class="table ">
                    <thead>
                        <tr>
                            <th class="serial">ID</th>
                            <th class="text-center">Name</th>
                            <th class="text-center">Delete</th>

                        </tr>
                    </thead>
                    <tbody>


                        <c:forEach var="o"  items="${listC}">
                            <tr>
                                <td class="serial">${o.id}</td>
                                <td class="text-center">${o.name}</td>
                                <td class="text-center">
                                    <a href="#" onclick="showMess(${o.id})">
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Delete
                                        </button>
                                    </a>

                                </td>

                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div> 
        </div>





    </div>
    <script>
        function showMess(id) {
            var option = confirm('Are you sure to delete category id = ' + id);
            if (option === true) {
                window.location.href = 'deleteCategory?cid=' + id;
            }
        }
    </script>

</div>
<%@include file="FooterAdmin.jsp" %>
