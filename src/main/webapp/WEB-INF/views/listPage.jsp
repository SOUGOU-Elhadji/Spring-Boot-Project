<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>
<!-- %@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%-->


	<!--br>

	<div class="row">
		
		<div class="container">
			<h3 class="text-center">LIST OF LAPTOPS</h3>
			<hr>
			<div class="container text-right">
				<a href="/add-laptop" class="btn btn-success" >ADD LAPTOP</a>
			</div>
			<br>
			<table class="table table-hover shadow p-3 mb-5 bg-body rounded">
			<caption><spring:message code="laptop.caption" /></caption>
				<thead>
					<tr>
						<th>Id</th>
						<th>User</th>
						<th>Make</th>
						<th>Model</th>
						<th>Description</th>
						<th>Price</th>
						<th>Pictures</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					
					<c:forEach items="${laptops}" var="laptop">
						<tr>
							<td><c:out value="${laptop.id }" /></td>
							<td><c:out value="${laptop.user }" /></td>
							<td><c:out value="${laptop.make }" /></td>
							<td><c:out value="${laptop.model }" /></td>
							<td><c:out value="${laptop.description }" /></td>
							<td><c:out value="${laptop.price }" /></td>
							<td><img src="${laptop.picture }" width="40" height="30" /></td>
							
							<td><a href="laptop-update?id=<c:out value='${laptop.id}' />" class="btn btn-warning">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
							<a href="delete-laptop?id=<c:out value='${laptop.id}' />" class="btn btn-danger">Delete</a>
							&nbsp;&nbsp;&nbsp;&nbsp; 
							<a href="detail-laptop?id=<c:out value='${laptop.id}'/>" class="btn btn-info">Details</a>
							</td>
						</tr>
					</c:forEach>
				
				</tbody>

			</table>
		</div>
	</div-->



<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
/* FontAwesome for working BootSnippet :> */

@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
#team {
    background: #eee !important;
}

.btn-primary:hover,
.btn-primary:focus {
    background-color: #108d6f;
    border-color: #108d6f;
    box-shadow: none;
    outline: none;
}

.btn-primary {
    color: #fff;
    background-color: #007b5e;
    border-color: #007b5e;
}

section {
    padding: 60px 0;
}

section .section-title {
    text-align: center;
    color: #007b5e;
    margin-bottom: 50px;
    text-transform: uppercase;
}

#team .card {
    border: none;
    background: #ffffff;
}

.image-flip:hover .backside,
.image-flip.hover .backside {
    -webkit-transform: rotateY(0deg);
    -moz-transform: rotateY(0deg);
    -o-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    transform: rotateY(0deg);
    border-radius: .25rem;
}

.image-flip:hover .frontside,
.image-flip.hover .frontside {
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
    transform: rotateY(180deg);
}

.mainflip {
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -ms-transition: 1s;
    -moz-transition: 1s;
    -moz-transform: perspective(1000px);
    -moz-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
    position: relative;
}

.frontside {
    position: relative;
    -webkit-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    z-index: 2;
    margin-bottom: 30px;
}

.backside {
    position: absolute;
    top: 0;
    left: 0;
    background: white;
    -webkit-transform: rotateY(-180deg);
    -moz-transform: rotateY(-180deg);
    -o-transform: rotateY(-180deg);
    -ms-transform: rotateY(-180deg);
    transform: rotateY(-180deg);
    -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
}

.frontside,
.backside {
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -moz-transition: 1s;
    -moz-transform-style: preserve-3d;
    -o-transition: 1s;
    -o-transform-style: preserve-3d;
    -ms-transition: 1s;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
}

.frontside .card,
.backside .card {
    min-height: 230px;
}

.backside .card a {
    font-size: 18px;
    color: #007b5e !important;
}

.frontside .card .card-title,
.backside .card .card-title {
    color: #007b5e !important;
}

.frontside .card .card-body img {
    width: 100px;
    height: 100px;
   
}
</style>
<!-- Team -->
<section id="team" class="pb-5">
    <div class="container">
        <h5 class="section-title h1">OUR SHOP LAPTOP</h5>
        <hr>
			<div class="container text-right">
				<a href="/add-laptop" class="btn btn-success" >ADD LAPTOP</a>
			</div>
			<br>
        <div class="row">
            <c:forEach items="${laptops}" var="laptop">
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="${laptop.picture }" alt="card image"></p>
                                    <h4 class="card-title">MAKE : <c:out value="${laptop.make }" /></h4>
                                    <p class="card-text">Model : <c:out value="${laptop.model }" /> &nbsp;&nbsp;&nbsp; Price : <c:out value="${laptop.price }" /></p>
                                    <p class="card-text"></p>
                                    <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><c:out value="${laptop.user }" /></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title"><c:out value="${laptop.id }" /></h4>
                                    <p class="card-text">Description : <c:out value="${laptop.description }" /></p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center btn btn-warning" href="laptop-update?id=<c:out value='${laptop.id}' />">
                                                <font color="white"><i class="fa fa-"></i>Edit</font>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center btn btn-danger" href="delete-laptop?id=<c:out value='${laptop.id}' />">
                                                <font color="white"><i class="fa fa-delete"></i>Delete</font>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center btn btn-info" href="detail-laptop?id=<c:out value='${laptop.id}'/>">
                                                <font color="white"><i class="fa fa-detail"></i>Details</font>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             </c:forEach>
            <!-- ./Team member -->

        </div>
    </div>
</section>
<!-- Team -->

<%@ include file="../common/footer.jspf" %>	


