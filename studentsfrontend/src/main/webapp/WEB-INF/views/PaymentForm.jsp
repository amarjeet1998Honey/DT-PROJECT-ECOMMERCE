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
	<h2><i class="fa fa-credit-card" aria-hidden="true"></i> Payment Page</h2>
	<springs:form action="${contextRoot}/addToCart/processOrder" method="post" modelAttribute="orderObj">
  	
  	<div class="form-group">
    <label for="cardNumber">card Number:</label>
    <springs:input type="text" class="form-control" path="cardNumber"/>
  	</div>
    
    <div>
    <label for="nameOnCard">card Name:</label>
    <springs:input type="text" class="form-control" path="nameOnCard"/>
  	</div>
  	
  	<div>
  	<label for="expiryDate">Expiry Date:</label>
    <springs:input type="text"  path="month" class="form-control input-sm"/><br>
    <springs:input type="text"  path="year" class="form-control input-sm"/>
  	</div>
  	
  	<div>
  		<label for="cvv">cvv:</label>
    	<springs:input type="text" class="form-control" path="cvv"/>
    </div>
    
    <div>
  		<label for="totalPrice">totalPrice:</label>
    	<springs:input type="text" class="form-control" path="totalPrice"/>
    </div>
    <br>
   <button type="submit" class="btn btn-primary">Pay</button>
</springs:form>
</div>

<br>
<br>
<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>