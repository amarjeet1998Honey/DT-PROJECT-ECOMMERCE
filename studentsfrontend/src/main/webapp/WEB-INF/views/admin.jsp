<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 

<jsp:include page="./shared/navbar.jsp"></jsp:include>


<!-- Contents --> 
<body>
<div class="container">
<div class="rows">
<br>
<br>
<div class="col-md-4">
<div class="thumbnail" align="center" style="background-color:silver;">
<div><a href="${contextRoot}/admin/getProductPage"><h4><i class="fa fa-cubes" aria-hidden="true"></i> Product</h4></a></div>
</div>
</div>
</div>

<div class="col-md-4">
<div class="thumbnail" align="center" style="background-color:silver;">
<div><a href="${contextRoot}/admin/category"><h4><i class="fa fa-list-alt" aria-hidden="true"></i> Category</h4></a></div>
</div>
</div>

<div class="col-md-4">
<div class="thumbnail" align="center" style="background-color:silver;">
<div><a href="${contextRoot}/admin/supplier"><h4><i class="fa fa-building-o" aria-hidden="true"></i> Supplier</h4></a></div>
</div>
</div>
</div>
<br>
<br>
<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>