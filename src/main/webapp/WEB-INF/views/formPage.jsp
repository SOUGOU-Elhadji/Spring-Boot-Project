<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

	<br>
	<div class="container col-md-5">
		<div class="card shadow p-3 mb-5 bg-body rounded">
			<div class="card-body">
				
				<form action="/add-laptop" method="post">
		
				<c:if test="${laptop != null}">
					<input type="hidden" name="id" value="<c:out value='${laptop.id}' />" />
				</c:if>
			
				<fieldset class="form-group">
					<!--label>User</label--> <input type="hidden"
						value="<c:out value='${laptop.user }' />" class="form-control"
						name="user" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Make</label> <input type="text"
						value="<c:out value='${laptop.make }' />" class="form-control"
						name="make">
				</fieldset>
				<fieldset class="form-group">
					<label>Model</label> <input type="text"
						value="<c:out value='${laptop.model }' />" class="form-control"
						name="model">
				</fieldset>
				<fieldset class="form-group">
					<label>Description</label> <input type="text"
						value="<c:out value='${laptop.description }' />" class="form-control"
						name="description">
				</fieldset>

				<fieldset class="form-group">
					<label>Price</label> <input type="text"
						value="<c:out value='${laptop.price }' />" class="form-control"
						name="price">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Picture</label> <input type="file"
						value="<c:out value='${laptop.picture }' />" class="form-control"
						name="picture">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
<%@ include file="../common/footer.jspf" %>	
