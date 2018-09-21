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

<h2><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h2>

<table class="table table-hover table-responsive">
    <thead>
      <tr>
        <th>Item Name</th>
        <th>Price</th>
       	<th>Quantity</th>
       	<th>Image</th>
       	
      </tr>
    </thead>
   <tbody>
 <c:forEach items="${itemsList}" var="itemObj">
 		
  		<tr>
  			<td>${itemObj.product.productName}</td>
  			<td>${itemObj.price}</td>
  			<td>${itemObj.quantity}</td>
  			<td><img src="${images}/${itemObj.product.imgname}" style="height:100px;width:100px" class="img-responsive"/></td>
  		
  		</tr>
  		
  </c:forEach>
  		<tr>
  			<td></td>
  			<td>Grand Total : </td>
  			<td>${totalAmountToPay}</td>
  		</tr>
  </tbody>
</table>
<a href="${contextRoot}/addToCart/makePayment" class="btn btn-primary">Go To Cart</a>
 <a href="${contextRoot}/addToCart/confirmOrder" class="btn btn-primary">Confirm Order</a>
</div>

<br>
<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>