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
                    <strong>Add Episode</strong> 
                </div>
                <div class="card-body card-block">
                    <c:if test="${empty e }">
                        <form action="posterEpisode" method="post" class="form-horizontal">
                        </c:if>
                        <c:if test="${not empty e }">
                            <form action="updateEpisode" method="post" class="form-horizontal">
                            </c:if>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Movie_id</label></div>
                                <div class="col-12 col-md-9"><input type="number" id="text-input"
                                                                    name="movieId" placeholder="Movie_id" class="form-control" value="${e.movie_id}"></div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Link_URL</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                    name="linkUrl" placeholder="link_url" class="form-control" value="${e.link_url}"></div>
                            </div>

                            <c:if test="${not empty e }">
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input"
                                                                     class=" form-control-label">Episode_number_old</label></div>
                                    <div class="col-12 col-md-9"><input type="number" id="text-input"
                                                                        name="episodeNumberold" placeholder="Episode_number" class="form-control" value="${e.episode_number}" readonly></div>
                                </div>
                            </c:if>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Episode_number</label></div>
                                <div class="col-12 col-md-9"><input type="number" id="text-input"
                                                                    name="episodeNumber" placeholder="Episode_number" class="form-control" value="${e.episode_number}"></div>
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
                            <th class="serial">Movie_ID</th>
                            <th class="text-center">Name</th>
                            <th class="text-center">Link</th>
                            <th class="text-center">Episode</th>
                            <th class="text-center">Edit</th>

                        </tr>
                    </thead>
                    <tbody>


                        <c:forEach var="o"  items="${listE}">
                            <tr>
                                <td class="serial">${o. movie_id}</td>
                                <td class="text-center">
                                    <c:out value="${dao.getMovieById(String.valueOf(o.movie_id)).getTitle()}" />
                                </td>
                                <td class="text-center">${o.link_url}</td>
                                <td class="text-center">${o.episode_number}</td>
                                <td class="text-center">
                                    <div class="card-footer d-flex flex-column align-items-center">
                                        <a href="updateEpisode?mid=${o.movie_id}&eid=${o.episode_number}">
                                            <button type="submit" class="btn btn-primary btn-sm mb-2">
                                                <i class="fa fa-dot-circle-o"></i> Update
                                            </button>
                                        </a>
                                        <a href="#" onclick="showMess(${o.movie_id},${o.episode_number})">
                                            <button type="reset" class="btn btn-danger btn-sm">
                                                <i class="fa fa-ban"></i> Delete
                                            </button>
                                        </a>
                                    </div>

                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div> 
        </div>





    </div>


</div>

<script>
    function showMess(id, num) {
        var option = confirm('Are you sure to delete movie id = ' + id + ' and episode number = ' + num);
        if (option === true) {
            window.location.href = 'deleteEpisode?mid=' + id + '&eid=' + num;
        }
    }
</script>

<%@include file="FooterAdmin.jsp" %>
