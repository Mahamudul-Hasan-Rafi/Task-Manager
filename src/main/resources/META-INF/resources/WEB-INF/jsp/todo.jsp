<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>Todo page</title>
		<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet"/>
		<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet"/>
	</head>
	<body>
		<%@ include file="common/navigation.jspf" %>
		<div class="container p-5">
		    <h4>Add Todo</h4>
			<form:form method="post" class="mt-3" modelAttribute="todo">
			  <div class="form-group">
			    <fieldset class="mb-2">
			    	  <label for="description">Description</label>
			    	  <form:input type="text" class="form-control mt-1" path="description" placeholder="Enter Task" requires="required"/>
			    </fieldset>
			    <fieldset>
			    	  <label for="targetDate">Target Date</label>
			    	  <form:input type="text" class="form-control mt-1" path="targetDate" placeholder="Enter Task" requires="required"/>
			    </fieldset>
			    <fieldset>
			    	<form:input type="hidden" class="form-control mt-1" path="id"/>
			    </fieldset>
			    <fieldset>
			    	<form:input type="hidden" class="form-control mt-1" path="done"/>
			    </fieldset>
			  </div>
			  <button type="submit" class="btn btn-primary mt-4">Add</button>
			</form:form>
		</div>
		<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
		<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
		
		<script>
			$('#targetDate').datepicker({
			    format: 'yyyy-mm-dd'
			});
		</script>
	</body>
</html>