<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>tecno-tab | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">SashMx-Tab</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/ticket">Ticket</a></li>
					<li><a href="/show-users">All Tickets</a></li>
				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to SashMx Music</h1>
					<h3>Come & Watch this Song Collection</h3>
				</div>
			</div>

		</c:when>

			<c:when test="${ mode=='MODE_TICKET'}">
			<div class="container text-center" id="tasksDiv">
				<h3>All Tickets</h3>
				<hr>
				<a href="/register">NEW TICKET</a>
				<div class="container text-left" id="tasksDiv">
							<c:forEach var="user" items="${users }">	
									
								<h4>${user.name}</h4>
								${user.content}
									<td><a href="/delete-user?id=${user.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-user?id=${user.id}"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								<hr>
						</c:forEach>
						</div>	
			</div>
		</c:when>
	
		
		

		<c:when test="${ mode=='MODE_REGISTER'}">
			<div class="container text-center">
				<h3>New Ticket</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${user.name }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email"
								value="${user.email }" />
						</div>
					</div>
						<div class="form-group">
						<label class="control-label col-md-3">Status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="status"
								value="${user.status }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">User type</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="user_type"
								value="${user.user_type }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">subject </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="subject"
								value="${user.subject }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Content</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="content"
								value="${user.content }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Create" />
					</div>
				</form>
			</div>

		</c:when>

		<c:when test="${ mode=='ALL_USERS'}">
			<div class="container text-center" id="tasksDiv">
				<h3>All Tickets</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Email</th>
								<th>Status</th>
								<th>UserType</th>
								<th>Subject</th>
								<th>Content</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.name}</td>
									<td>${user.email}</td>
									<td>${user.status}</td>
									<td>${user.user_type}</td>
									<td>${user.subject}</td>
									<td>${user.content}</td>
									<td><a href="/delete-user?id=${user.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-user?id=${user.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${ mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email"
								value="${user.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="status"
								value="${user.status }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">User Type </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="user_type"
								value="${user.user_type }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Subject</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="subject"
								value="${user.subject }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Content</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="content"
								value="${user.content }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>

		</c:when>

		<c:when test="${ mode=='MODE_LOGIN'}">
			<div class="container text-center">
				<h3>User Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-user">
					<c:if test="${not empty error }">
					<div class="alert alert-danger">
				 <c:out value="${ error}"></c:out></div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
		
			</form>
			</div>

		</c:when>

	</c:choose>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>

</body>
</html>
