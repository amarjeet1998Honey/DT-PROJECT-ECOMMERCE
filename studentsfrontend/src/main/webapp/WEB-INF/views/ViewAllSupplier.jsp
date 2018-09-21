<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="images" value="/resources/images"/>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
 
<body>

<jsp:include page="./shared/navbar.jsp"></jsp:include>

<div class="container">
<br/>

<h1 style="color:green">${msg}</h1>
<h1>List Of Supplier</h1>
<table class="table table-condensed">
    <thead>
      <tr>
        <th>Supplier Name</th>
        <th>Supplier Address</th>
        <th>Actions</th>
       <!--  <th>Image</th> -->
      </tr>
    </thead>
   <tbody>
 <c:forEach items="${supplierList}" var="supplierObj">
 		
  		<tr>
  			<td>${supplierObj.supplierName}</td>
  			<td>${supplierObj.supplierAddress}</td>
  			<td><a href="${contextRoot}/admin/deleteSupplier/${supplierObj.supplierId}"><span class="glyphicon glyphicon-trash"></span></a>
  			</a></td>
  			 
  		</tr>
  </c:forEach>
  </tbody>
</table>
</div>

<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>