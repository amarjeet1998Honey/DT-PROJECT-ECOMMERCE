<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="./shared/navbar.jsp"></jsp:include>

<div class="container">

<div style="color:red">${msg}</div>

<div class="rows">
<div class="col-md-6">
<div class="thumbnail" align="center" style="background-color:silver;">
<div><a href="${contextRoot}/admin/addCategoryForm"><h4><i class="fa fa-list-alt" aria-hidden="true"></i> Add Category</h4></a></div>
</div>
</div>
</div>


<div class="col-md-6">
<div class="thumbnail" align="center" style="background-color:silver;">
<div><a href="${contextRoot}/admin/viewAllCategory"><h4><i class="fa fa-eye" aria-hidden="true"></i> View All Category</h4></a></div>
</div>

</div>

</div>

<jsp:include page="./shared/footer.jsp"></jsp:include>

</body>
</html>