<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>
<!-- %@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%-->


	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">LIST OF LAPTOPS</h3>
			<hr>
			<div class="container text-right">
				<a href="/list-laptop" class="btn btn-success" >LIST LAPTOP</a>
			</div>
			<br>
			<caption><spring:message code="laptop.caption"/></caption>

	<style>
	.card {
    width: 450px;
    border: none;
    height: 350px;
    border-radius: 3px;
    cursor: pointer;
    position: relative;
    overflow: hidden
}

.p-info {
    display: flex;
    justify-content: space-between
}

.p-price {
    position: absolute;
    right: 10px;
    top: 20px
}

.heart i {
    font-size: 50px;
    opacity: 0;
    color: red
}

.heart i:hover {
    color: red
}

.p-image img {
    width: 240px;
    transform: rotate(15deg);
    transition: all 0.5s
}

.card:hover .heart i {
    animation: heart 300ms ease-in forwards;
    animation-delay: 500ms
}

.p-about {
    position: absolute;
    width: 170px;
    font-size: 10px;
    top: 140px;
    left: -125px;
    opacity: 0
}

.card:hover .p-about {
    animation: content 300ms ease-in forwards
}

@keyframes content {
    0% {
        opacity: 0
    }

    100% {
        opacity: 1;
        left: 25px
    }
}

@keyframes heart {
    0% {
        opacity: 0
    }

    100% {
        opacity: 1
    }
}

.card:hover .p-image img {
    animation: onimage 300ms ease-in forwards
}

.card:hover .p-price {
    animation: onprice 500ms ease-in forwards
}

@keyframes onprice {
    0% {
        right: 10px;
        top: 20px
    }

    50% {
        right: 60px;
        top: 30px
    }

    100% {
        right: 267px;
        top: 70px
    }
}

@keyframes onimage {
    0% {
        width: 250px
    }

    50% {
        width: 200px;
        transform: translateY(-30px);
        transform: translateX(100px)
    }

    100% {
        width: 180px;
        top: 100px;
        transform: translateY(100px);
        transform: translateX(110px)
    }
}

.buttons {
    position: absolute;
    bottom: -150px
}

.card:hover .buttons {
    animation: buttons 500ms ease-in forwards
}

@keyframes buttons {
    0% {
        bottom: -100px
    }

    100% {
        bottom: 20px
    }
}

.btn {
    height: 50px;
    font-size: 16px;
    width: 140px !important;
    font-weight: 600
}
	</style>
	
	<div class="bg-white vh-50 d-flex justify-content-center align-items-center shadow p-3 mb-5">
    <div class="container d-flex justify-content-center">
        <div class="card p-2">
            <div class="p-info px-3 py-3">
                <div>
                    <h5 class="mb-0"><c:out value="${laptop.make }" /></h5> <span><c:out value="${laptop.model }" /></span>
                </div>
                <div class="p-price d-flex flex-row"> <span>$</span>
                    <h1><c:out value="${laptop.price }" /></h1>
                </div>
                <div class="heart"> <i class="bx bx-heart"></i> </div>
            </div>
            <div class="text-center p-image"> <img src="<c:out value="${laptop.picture }" />"> </div>
            <div class="p-about">
                <p><c:out value="${laptop.description }" /></p>
            </div>
            </div>
    </div>
</div>

</div>
</div>
<%@ include file="../common/footer.jspf" %>	


