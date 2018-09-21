<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 
 
<spring:url var="images" value="/resources/images"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="./shared/navbar.jsp"></jsp:include>
<div style="color:red">${msg}</div>
<br/>

<div class="container">
<h2>Register Here</h2>
	<form:form action="${contextRoot}/submitUser" method="post" modelAttribute="userForm">
	<div class="form-group">
    <label for="FirstName">First Name:</label>
    <form:input type="text" class="form-control" path="firstName"/>
  	</div>
  	
  	 	<div class="form-group">
    <label for="LastName">Last Name:</label>
    <form:input type="text" class="form-control" path="lastName"/>
  	</div>
  	
  	
  	<div class="form-group">
    <label for="email">Email:</label>
    <form:input type="email" class="form-control" path="email"/>
  	</div>
  	
  	<div class="form-group">
    <label for="password">Password:</label>
    <form:input type="password" class="form-control" path="password"/>
  	</div>
  	
  	<div class="form-group">
    <label for="password2">Confirm Password :</label>
    <form:input type="password" class="form-control" path="confirmPassword"/>
  	</div>
    
    <div class="form-group">
    <label for="phone">Contact Number:</label>
    <form:input type="mobile" class="form-control" path="contactNumber"/>
  	</div>
    
    <button type="submit" value="submit" class="btn btn-primary">Register</button>
</form:form>
<br>
<br>
</div>
<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>