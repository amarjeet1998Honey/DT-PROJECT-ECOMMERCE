<!-- navbar -->
<!-- jsp include will include the contents at runtime...will not copy like include directive -->
 <jsp:include page="./shared/navbar.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<spring:url var="images" value="/resources/images"/>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<div class="container">

<br/>

<h1 style="color:green">${msg}</h1>
<h1>List Of  Product</h1>
<!-- <div class="thumbnail">
<table class="table table-condensed">
    <thead>
      <tr>
        <th>Product Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Quantity</th>
        <th>Category</th>
        <th>Supplier</th>
        <th>Image</th>
        <th>Actions</th>
        <th>Image</th>
      </tr>
    </thead>
   <tbody> -->
 <c:forEach items="${productList}" var="productObj">
 		<div class="col-md-4">
 		<div class="thumbnail" align="center">
 
 
 			<img src="${images}/${productObj.imgname}" class="img-responsive" style="width:100px; height:100px;"/>
  			 ${productObj.productName}<br>
  			 ${productObj.price}<br>
  			 ${productObj.description}<br>
  			 ${productObj.quantity}<br>
  			 ${productObj.category.categoryName}<br>
  			 ${productObj.supplier.supplierName}<br><br>
  			 
  			<a href="${contextRoot}/addToCart/${productObj.productId}" class="btn btn-warning"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
  			
  			<sec:authorize access="hasAuthority('ADMIN')">
  			<td><a href="deleteProduct/${productObj.productId}"><span class="glyphicon glyphicon-trash"></span></a></td>
  			<td><a href="deleteProduct/${productObj.productId}"><span class="glyphicon glyphicon-edit"></span></a></td>
  			</sec:authorize>
  			<%-- <td>${images}/${productObj.imgname}</td> --%>
  			</div>
  			</div>
  </c:forEach> 
<!--   </tbody>
</table> -->
</div>

<jsp:include page="./shared/footer.jsp"></jsp:include>

</body>
</html>
