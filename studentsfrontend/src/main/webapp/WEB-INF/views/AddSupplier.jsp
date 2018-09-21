<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<br/>
	<h1><i class="fa fa-building-o" aria-hidden="true"></i> Add Supplier</h1>
	<form:form action="${contextRoot}/admin/addsupplier" method="post" modelAttribute="supplierObj">
	 
  	<div class="form-group">
    <label for="supplierName">Supplier Name:</label>
    <form:input type="text" class="form-control" path="supplierName"/>
    </div>
    
    <div class="form-group">
    <label for="supplierName">Supplier Address:</label>
    <form:input type="text" class="form-control" path="supplierAddress"/>
    </div>
    <button type="submit" class="btn btn-danger">Add Supplier</button>
       <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
    </form:form>
  	</div>
  	<br>
  	<br>
  	<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>