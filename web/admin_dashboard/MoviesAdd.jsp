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
                    <strong>Add Movies</strong> 
                </div>
                <div class="card-body card-block">
                    <c:if test="${empty mv }">
                        <form action="../poster/posterMovie" method="post" class="form-horizontal">
                        </c:if>
                        <c:if test="${not empty mv }">
                            <form action="updateMovies" method="post" class="form-horizontal">


                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input"
                                                                     class=" form-control-label">ID</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                        name="idtxt" placeholder="Title" class="form-control" value="${mv.id}" readonly></div>
                                </div>
                            </c:if>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Title</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                    name="titletxt" placeholder="Title" class="form-control" value="${mv.title}"></div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Origin_name</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                    name="origintxt" placeholder="Origin_name" class="form-control" value="${mv.origin_name}"></div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="textarea-input"
                                                                 class=" form-control-label">Description</label></div>
                                <div class="col-12 col-md-9"><textarea name="descriptiontxt" id="textarea-input"
                                                                       rows="9" placeholder="Content..." class="form-control">${mv.description}</textarea></div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="select-year" class=" form-control-label">Year</label></div>
                                <div class="col-12 col-md-9">
                                    <select name="yeartxt" id="select-year" class="form-control">
                                        <c:forEach begin="2015" end="2030" varStatus="status">
                                            <option value="${status.index}" ${status.index == mv.year ? 'selected' : ''}>${status.index}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="select-status" class=" form-control-label">Status</label></div>
                                <div class="col-12 col-md-9">
                                    <select name="statustxt" id="select-status" class="form-control">
                                        <option value="Trailer" ${mv.status == 'Trailer' ? 'selected' : ''}>Trailer</option>
                                        <option value="Airing" ${mv.status == 'Airing' ? 'selected' : ''}>Airing</option>
                                        <option value="Completed" ${mv.status == 'Completed' ? 'selected' : ''}>Completed</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Duration</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                    name="durationtxt" placeholder="Duration" class="form-control" value="${mv.duration}"></div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Episode</label></div>
                                <div class="col-12 col-md-9"><input type="number" id="text-input"
                                                                    name="episodenum" placeholder="Episode" class="form-control" value="${mv.episode}"></div>
                            </div>







                            <div class="row form-group">
                                <div class="col col-md-3"><label class=" form-control-label">Category</label>
                                </div>
                                <div class="col col-md-9">
                                    <div class="form-check">


                                        <c:forEach var="o" items="${listC}">
                                            <div class="checkbox">
                                                <label for="checkbox${o.id}" class="form-check-label">
                                                    <input type="checkbox" id="checkbox${o.id}" name="categorytxt" value="${o.id}" 
                                                           <c:forEach var="c" items="${cat}">
                                                               ${c.id == o.id ? 'checked' : ''}
                                                           </c:forEach>
                                                           class="form-check-input">${o.name}
                                                </label>
                                            </div>
                                        </c:forEach>


                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <label class="form-control-label">Hot</label>
                                </div>
                                <div class="col col-md-9">
                                    <div class="form-check-inline form-check">
                                        <label for="inline-radio1" class="form-check-label">
                                            <input type="radio" id="inline-radio1" name="hottxt" value="0" ${mv.hot == 0 ? 'checked' : ''} class="form-check-input">Yes    
                                        </label>
                                        <label for="inline-radio2" class="form-check-label">
                                            <input type="radio" id="inline-radio2" name="hottxt" value="1" ${mv.hot == 1 ? 'checked' : ''} class="form-check-input">No
                                        </label>
                                    </div>
                                </div>
                            </div>


                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <label class="form-control-label">Top</label>
                                </div>
                                <div class="col col-md-9">
                                    <div class="form-check-inline form-check">
                                        <label for="inline-checkbox1" class="form-check-label">
                                            <input type="radio" id="inline-checkbox1" name="toptxt" value="1" ${mv.topview == 1 ? 'checked' : ''} class="form-check-input">Day    
                                        </label>
                                        <label for="inline-checkbox2" class="form-check-label">
                                            <input type="radio" id="inline-checkbox2" name="toptxt" value="2" ${mv.topview == 2 ? 'checked' : ''} class="form-check-input">Week    
                                        </label>
                                        <label for="inline-checkbox3" class="form-check-label">
                                            <input type="radio" id="inline-checkbox3" name="toptxt" value="3" ${mv.topview == 3 ? 'checked' : ''} class="form-check-input">Month    
                                        </label>
                                        <label for="inline-checkbox4" class="form-check-label">
                                            <input type="radio" id="inline-checkbox4" name="toptxt" value="4" ${mv.topview == 4 ? 'checked' : ''}  class="form-check-input">Top Year
                                        </label>
                                    </div>
                                </div>
                            </div>



                            <div class="row form-group">
                                <div class="col col-md-3"><label class=" form-control-label">Genres</label>
                                </div>
                                <div class="col col-md-9">
                                    <div class="form-check">
                                        <c:forEach var="o"  items="${listG}">
                                            <div class="checkbox">
                                                <label for="checkbox1" class="form-check-label ">
                                                    <input type="checkbox" id="checkbox1" name="genrestxt"
                                                           value="${o.id}"  <c:forEach var="genr" items="${genr}">
                                                               ${genr.id == o.id ? 'checked' : ''}
                                                           </c:forEach> class="form-check-input">${o.name}
                                                </label>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>

                            <!--                        up load file anh trong may-->
                            <!--                        <div class="row form-group">
                                                        <div class="col col-md-3"><label for="file-input"
                                                                                         class=" form-control-label">Image</label></div>
                                                        <div class="col-12 col-md-9"><input type="file" id="file-input"
                                                                                            name="file-input" class="form-control-file"></div>
                                                    </div>-->
                            <!--                        up load file anh theo link-->      
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Image</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                    name="imagetxt" value="${mv.img}" placeholder="Image" class="form-control"></div>
                            </div>


                            <div class="card-footer">
                                <c:if test="${empty mv }">
                                    <button type="submit" class="btn btn-primary btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> Submit
                                    </button>
                                </c:if>
                                <c:if test="${not empty mv }">
                                    <button type="submit" class="btn btn-primary btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> Update
                                    </button>
                                </c:if>

                                <button type="reset" class="btn btn-danger btn-sm">
                                    <i class="fa fa-ban"></i> Reset
                                </button>
                            </div>
                        </form>
                </div>

            </div>
            <c:if test="${ empty mv }">

                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th class="serial text-center">ID</th>
                                <th class="text-center">Title</th>
                                <th class="text-center">Image</th>
                                <th class="text-center">Origin_name</th>
                                <th class="text-center">Description</th>
                                <th class="text-center">Hot</th>
                                <th class="text-center">Top</th>
                                <th class="text-center">Category</th>
                                <th class="text-center">Year</th>
                                <th class="text-center">Duration</th>
                                <th class="text-center" >Genres</th>
                                <th class="text-center">Episode</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="o" items="${allMovies}" varStatus="status">
                                <tr>
                                    <td class="serial text-center">${o.id}</td>
                                    <td class="text-center">${o.title}</td>
                                    <td class="avatar ">
                                        <div class="round-img" style="width: 70px; height: 70px; overflow: hidden;">
                                            <a href="#"><img src="../${o.img}" alt="" style="width: 100%; height: 100%; object-fit: cover;"></a>
                                        </div>
                                    </td>
                                    <td class="text-center">${o.origin_name}</td>
                                    <td class="text-center">
                                        <span class="text-muted small" style="display: block;min-width: 200px; max-height: 70px; overflow-y: auto;">${o.description}</span>
                                    </td>
                                    <td class="text-center"><span class="badge badge-light"> ${o.hot == 1 ? "Yes" : "No"}</span></td>
                                    <td class="text-center"><span class="badge badge-dark">${o.topview == 0 ? "None" :o.topview == 1 ? "Day" : o.topview == 2 ? "Week" : o.topview == 3 ? "Month" : "Year"}</span></td>
                                    <td class="text-center"> <c:set var="category" value="${dao.getCategoriesesByMovieId(String.valueOf(o.id))}" />
                                        <c:forEach items="${category}" var="c" varStatus="status">
                                            <span class="badge badge-danger"> <c:out value="${c.name}" /></span>
                                            <c:if test="${not status.last}"><br> </c:if>
                                        </c:forEach></td>
                                    <td class="align-items-center"><span class="badge badge-warning">${o.year}</span></td>
                                    <td class="text-center"><span class="badge badge-info">${o.duration}</span></td>
                                    <td class="text-center">
                                        <c:set var="genres" value="${dao.getGenresByMovieId(String.valueOf(o.id))}" />
                                        <c:forEach items="${genres}" var="g" varStatus="status">
                                            <span class="badge badge-secondary"> <c:out value="${g.name}" /></span>
                                            <c:if test="${not status.last}"><br> </c:if>
                                        </c:forEach>
                                    </td>
                                    <td class="text-center"><span class="badge badge-primary">${o.episode}</span></td>
                                    <td class="text-center">
                                        <span class="badge badge-success">${o.status}</span>
                                    </td>

                                    <td class="text-center">
                                        <div class="card-footer d-flex flex-column align-items-center">
                                            <a href="updateMovies?mid=${o.id}">
                                                <button type="submit" class="btn btn-primary btn-sm mb-2">
                                                    <i class="fa fa-dot-circle-o"></i> Update
                                                </button>
                                            </a>
                                            <a href="#" onclick="showMess(${o.id})">
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

            </c:if>



        </div>





    </div>


</div>
<script>
    function showMess(id) {
        var option = confirm('Are you sure to delete movie id = ' + id);
        if (option === true) {
            window.location.href = 'deleteMovie?mid=' + id;
        }
    }
</script>

<%@include file="FooterAdmin.jsp" %>

