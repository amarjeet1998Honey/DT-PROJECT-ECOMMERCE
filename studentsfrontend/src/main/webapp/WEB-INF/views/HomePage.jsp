<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
  <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 
<spring:url var="images" value="/resources/images"/>
 
<body>
<!-- navbar -->
<!-- jsp include will include the contents at runtime...will not copy like include directive -->
 <jsp:include page="./shared/navbar.jsp"></jsp:include>

 
	<sec:authorize access="hasAuthority('ADMIN')">
		<jsp:forward page="${contextRoot}/admin/adminpage"/>
	</sec:authorize>

<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
       <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <div class="carousel-inner">
      <div class="item active">
        <img src="${images}/tilepc_1.jpg" alt="Flat 50% off" style="width:100%;">
      </div>

      <div class="item">
        <img src="${images}/tilepc_2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="${images}/tilepc_4.jpg" alt="New york" style="width:100%;">
      </div>
      <div class="item">
        <img src="${images}/tilepc_5.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>

<br>
<br>
<div class="container">    
  <div class="row">
    <div class="col-sm-3">
      <div class="panel panel-primary">
        <div class="panel-heading">Samsung S9+</div>
        <div class="panel-body"><img src="${images}/s9.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Apple Iphone 7</div>
        <div class="panel-body"><img src="${images}/iphone7.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-success">
        <div class="panel-heading">Dell Laptop</div>
        <div class="panel-body"><img src="${images}/dell.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
	    <div class="col-sm-3"> 
      <div class="panel panel-warning">
        <div class="panel-heading">Vivo V9</div>
        <div class="panel-body"><img src="${images}/vivo.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br>

<jsp:include page="./shared/footer.jsp"></jsp:include>

