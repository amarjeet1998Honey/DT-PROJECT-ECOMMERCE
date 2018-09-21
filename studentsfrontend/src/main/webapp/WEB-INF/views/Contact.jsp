<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="./shared/navbar.jsp"></jsp:include>

<div class="container">
  <h2 align="center"><i class="fa fa-phone" aria-hidden="true"></i> Contact</h2>
  <div class="col-sm-7">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="name" class="form-control" id="name" placeholder="Enter Name" name="name" required>
    </div>
	</div>
	<br>
	<br>
	<div class="col-sm-7">
    <div class="form-group">
      <label for="pwd">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" required>
    </div>
	</div><br><br>
	<div class="col-sm-7">
	<div class="form-group">
      <label for="pwd">Phone No:</label>
      <input type="tel" class="form-control" id="tel" placeholder="Enter Phone no" name="tel" required>
    </div>
	</div><br><br>
	<div class="col-sm-7">
      <p><b>Comment:</b></p>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
	<br>
     <button type="submit" class="btn btn-danger">Submit</button> 
	 </div>
  </form>
</div>
</div>
<br>
<br>

<jsp:include page="./shared/footer.jsp"></jsp:include>
</body>
</html>