<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 
 
 <body>
 
<jsp:include page="./shared/navbar.jsp"></jsp:include>

<div class="container">

<div style="color:red">${msg}</div>

<div class="rows">
<br>
<div class="col-md-6">
<div class="thumbnail" align="center" style="background-color:silver;">
<div><a href="${contextRoot}/admin/addProductForm"><h4><i class="fa fa-cubes" aria-hidden="true"></i> Add Product</h4></a></div>
</div>
</div>
</div>


<div class="col-md-6">
<div class="thumbnail" align="center" style="background-color:silver;">
<div><a href="${contextRoot}/admin/viewAllProducts"><h4><i class="fa fa-eye" aria-hidden="true"></i> View All Products</h4></a></div>
</div>

</div>
</div>

<br>
<br>
<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>

