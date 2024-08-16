<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
	<head>
		<title>Welcome</title>
		<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet"/>
	</head>
	<body>
		<%@ include file="common/navigation.jspf" %>
		<div class="container p-5">
			<div>Welcome ${name}</div>
			<hr>
			<div><h4>Your Todos are: <h4></div>
			<table class="table mt-3">
				<thead>
					<tr>
						<th>Description</th>
						<th>TargetDate</th>
						<th>Is Done?</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.description}</td>
							<td>${todo.targetDate}</td>
							<td>${todo.done}</td>
							<td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">DELETE</a></td>
							<td><a href="update-todo?id=${todo.id}" class="btn btn-primary">UPDATE</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="add-todo" class="btn btn-success mt-3">Add Todo</a>
		</div>
		<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	</body>
</html>