<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 
<body>

<jsp:include page="./shared/navbar.jsp"></jsp:include>

<div class="container">

<div style="color:red">${msg}</div>

<div class="rows">
<br>

<div class="col-md-6">
<div class="thumbnail" align="center" Style="background-color:silver;">
<div><a href="${contextRoot}/admin/addSupplierForm"><h4><i class="fa fa-building-o" aria-hidden="true"></i> Add Supplier</h4></a></div>
</div>
</div>
</div>


<div class="col-md-6">
<div class="thumbnail" align="center" Style="background-color:silver;">
<div><a href="${contextRoot}/admin/viewAllSupplier"><h4><i class="fa fa-eye" aria-hidden="true"></i> View All Supplier</h4></a></div>
</div>

</div>

</div>
<br>
<br>
<jsp:include page="./shared/footer.jsp"></jsp:include>

</body>
</html>