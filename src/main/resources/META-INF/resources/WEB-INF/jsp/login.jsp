<html>
	<head>
		<title>Login Page</title>
		<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet"/>
	</head>
	<body>
		<%@ include file="common/navigation.jspf" %>
		<div class="container p-5">
			Welcome to Login page!
			<form method="post" class="mt-3">
			  <div class="form-group">
			    <label for="name">Name</label>
			    <input type="text" class="form-control" name="name" placeholder="Enter Name">
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" class="form-control" name="password" placeholder="Password">
			  </div>
			  <button type="submit" class="btn btn-primary mt-4">Submit</button>
			</form>
		</div>
		<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	</body>
</html>