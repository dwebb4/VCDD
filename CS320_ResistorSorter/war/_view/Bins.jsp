<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
		<link rel="icon" href="_view/images/favicon.ico" type="image/x-icon">
		<title>Bins</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href= "_view/css/styles.css" rel= "stylesheet" type= "text/css">
	</head>

	<body>
		<div class="container">
			<div class="row">					
					
	<form action="${pageContext.servletContext.contextPath}/Bins" method="post">
		<script src="_view/javaScript/navbar.js"></script>
    	<c:if test="${! empty errorMessage}">
			<div class="alert alert-danger alert-dismissable fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Error: </strong>${errorMessage}
			</div>
		</c:if>
						<div>
							<table class="col-md-6">
								
								<tr>
									<th> Rack ID: </th>
									<td><input type="number" min="1" name="rack_id" size="12" value="${rack_id}" /></td>
								</tr>
							
								<tr>
									<th><th><input type="Submit" name="displayBins" value="Display Bins!"></th>
								</tr>
								
								<tr>
									<th>Resistance: </th>
									<td><input type="number" min="1" name="resistance" size="12" value="1"/></td>
								</tr>
							
								<tr>
									<th>Count: </th>
									<td><input type="number" min="0" max="${binCap}"name="count" size="12" value="0"/></td>
								</tr>
							
								<tr>
									<th><th><input type="Submit" name="addBin" value="Add Bin!"></th>
								</tr>
							</table>
						</div>
						
						<div>
							<table class="col-md-6">
								
								<tr>
									<th>Bin # </th> <th>Resistance </th> 	<th>Count </th><th>
								</tr>
									
								<c:forEach items="${bins}" var="item" varStatus="status">
			 						<tr> 
			 							<td>${item.bin_id}</td>
			 						 	<td>${item.resistance}</td>
			 						 	<td>${item.count}</td>
			 						 	<td><button type="submit" name="deleteBin" value="${item.bin_id}">Delete</button></td> 
			 						 	
			 						</tr>
								</c:forEach>
			
							</table>
						</div>
						
					</form>
				</div>
			</div>
		
	</body>
	
</html>