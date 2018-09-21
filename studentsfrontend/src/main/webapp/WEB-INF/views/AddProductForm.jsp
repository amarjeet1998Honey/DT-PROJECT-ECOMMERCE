<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 
<!-- navbar -->
<!-- jsp include will include the contents at runtime...will not copy like include directive -->
 <jsp:include page="./shared/navbar.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">

<div style="color:red">${msg}</div>
<br/>
	<h1><i class="fa fa-cubes" aria-hidden="true"></i> Add Product</h1>
	<form action="${contextRoot}/admin/addProduct" method="post"
	 enctype="multipart/form-data">
  	<div class="form-group">
    <label for="productName">Product Name:</label>
    <input type="text" class="form-control" name="productName"/>
  	</div>
  <div class="form-group">
    <label for="description">Description:</label>
    <input type="text" class="form-control" name="description"/>
  </div>
  <div class="form-group">
    <label for="price">Price:</label>
    <input type="text" class="form-control" name="price"/>
  </div>
  <div class="form-group">
    <label for="quantity">Quantity:</label>
    <input type="text" class="form-control" name="quantity"/>
  </div>

  <div class="form-group">
  	<label for="category">Category:</label>
  	<select name="category" class="form-control">
  		<option value="none">---------Select Category-----------------</option>
  		<c:forEach items="${categoryList}" var="categoryObj">
  		<option value="${categoryObj.categoryId}">${categoryObj.categoryName}</option>
  		</c:forEach>
  	</select>
  </div>
  
    <div class="form-group">
  	<label for="supplier">Supplier:</label>
  	<select name="supplier" class="form-control">
  		<option value="none">---------Select Supplier-----------------</option>
  		<c:forEach items="${supplierList}" var="supplierObj">
  		<option value="${supplierObj.supplierId}">${supplierObj.supplierName}</option>
  		</c:forEach>
  	</select>
  </div>
  
  	 <div class="form-group">
			<label  for="pimage">Upload New Image :  </label>
			<input  type="file"
			 class="form-control" 
			 id="file" placeholder="Upload Product Image" name="file"/>
	</div>	
  
  
   <button type="submit" class="btn btn-default">Add Product</button>
   <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
</form>
</div>


<div style="margin-top: 100px">
<jsp:include page="./shared/footer.jsp"></jsp:include>
</div>
