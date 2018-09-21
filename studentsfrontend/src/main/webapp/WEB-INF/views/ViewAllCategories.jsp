<!-- navbar -->
<!-- jsp include will include the contents at runtime...will not copy like include directive -->
 <jsp:include page="./shared/navbar.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="images" value="/resources/images"/>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
 <body>
<div class="container">
<br/>

<h1 style="color:green">${msg}</h1>
<h1>List Of Category</h1>
<div class="thumbnail">
<table class="table table-hover">
    <thead>
      <tr>
        <th>Category Name</th>
        <th>Category Description</th>
        <th>Actions</th>
       <!--  <th>Image</th> -->
      </tr>
    </thead>
   <tbody>
 <c:forEach items="${categoryList}" var="categoryObj">
 		
  		<tr>
  			<td>${categoryObj.categoryName}</td>
  			<td>${categoryObj.categoryDesc}</td>
  			<td><a href="${contextRoot}/admin/deleteCategory/${categoryObj.categoryId}"><span class="glyphicon glyphicon-trash"></span></a>
  			</a></td>
  			 
  		</tr>
  </c:forEach>
  </tbody>
</table>
</div>
</div>

<jsp:include page="./shared/footer.jsp"></jsp:include>

</body>
</html>
