<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
  <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 
<spring:url var="images" value="/resources/images"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>
<jsp:include page="./shared/navbar.jsp"></jsp:include>

<div class="container">
<div class="rows">
<br>

<div class="col-md-12">
<div class="col-md-6">
<a href="#"><img src="${images}/store1.jpg" class="img-responsive"></a>
</div>
<div class="col-md-6">
<a href="#"><img src="${images}/store2.jpg" class="img-responsive"></a>
</div>
</div>

<div class="col-md-12">
<div class="col-md-6">
<a href="#"><img src="${images}/store3.jpg" class="img-responsive"></a>
</div>
<div class="col-md-6">
<a href="#"><img src="${images}/store4.jpg" class="img-responsive"></a>
</div>

</div>

<div class="col-md-12">
<div class="col-md-6">
<a href="#"><img src="${images}/store5.jpg" class="img-responsive"></a>
</div>
<div class="col-md-6">
<a href="#"><img src="${images}/store6.jpg" class="img-responsive"></a>
</div>

</div>

</div>
</div>
<br>
<br>
<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>