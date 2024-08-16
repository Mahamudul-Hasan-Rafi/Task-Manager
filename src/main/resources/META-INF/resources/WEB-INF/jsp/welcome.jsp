<html>
	<head>
		<title>Welcome Page</title>
		<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet"/>
	</head>
	<body>
	<%@ include file="common/navigation.jspf" %>
		<div class="container p-5">
			<div>Welcome ${name}</div>
			<hr/>
			<div><a href="list-todos" class="btn btn-primary">Manage</a> your ToDos</div>
		</div>
		<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	</body>
</html>