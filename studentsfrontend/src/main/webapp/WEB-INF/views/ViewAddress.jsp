<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="images" value="/resources/images"/>

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

<h1 style="color:green">${msg}</h1>

<h1>Address List</h1>
<div class="thumbnail">
<table class="table table-condensed table-responsive">
    <thead>
      <tr>
        <th>House Number</th>
        <th>Locality</th>
       	<th>City</th>
       	<th>State</th>
       	<th>Pincode</th>
       	
      </tr>
    </thead>
   <tbody>
 <c:forEach items="${addressList}" var="addressObj">
 		
  		<tr>
  			<td>${addressObj.houseNumber}</td>
  			<td>${addressObj.locality}</td>
  			<td>${addressObj.city}</td>
  			<td>${addressObj.state}</td>
  			<td>${addressObj.pincode}</td>
  			
  		</tr>
  		
  </c:forEach>
  </tbody>
</table>
<a href="${contextRoot}/addToCart/placeOrder" class="btn btn-primary">Place Order</a>
</div>
</div>

<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>