<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="springs" uri="http://www.springframework.org/tags/form" %>
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
<br/>
	<h2><i class="fa fa-address-book" aria-hidden="true"></i> Address Form</h2>
	<springs:form action="${contextRoot}/addToCart/addAddress" method="post" modelAttribute="addressObj">
  	<div class="form-group">
    <label for="houseNumber">House Number:</label>
    <springs:input type="text" class="form-control" path="houseNumber"/>
  	</div>
    <div class="form-group">
    <label for="locality">Locality:</label>
    <springs:input type="text" class="form-control" path="locality"/>
  	</div>
  	<div class="form-group">
    <label for="city">City:</label>
    <springs:input type="text" class="form-control" path="city"/>
  	</div>
  	<div class="form-group">
    <label for="state">State:</label>
    <springs:input type="text" class="form-control" path="state"/>
  	</div>
  	<div class="form-group">
    <label for="pinCode">Pincode:</label>
    <springs:input type="text" class="form-control" path="pincode"/>
  	</div>
  	<br>
   <button type="submit" class="btn btn-danger">Add Address</button>
</springs:form>
</div>
<br>
<br>
<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>