<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>Datagear Company Home Page</title>
</head>

<body>
	<h2>Datagear  Company Home Page</h2>
	<hr>
	
	<p>
		Welcome to the Datagear company home page!
    </p>
    
    <hr>
    
    	<!-- display user name and role -->
    	<p>
    		User: <security:authentication property="principal.username"/>
    		<br><br>
    		Role (s): <security:authentication property="principal.authorities"/>
    	</p>	
    	
    	
    	<!-- That make authorized for manager only -->
    	<security:authorize access="hasRole('MANAGER')">
    	
	    	<!-- Add a link to  point to /leaders ... this is for managers-->
		    <hr>
	    	<p>
	    		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a> 	
	    		(Only for Manager people)
	    	</p>
    	</security:authorize>
    	
    	
    	<!-- That make authorized for manager only -->
    	<security:authorize access="hasRole('ADMIN')">
    	
	    	<!-- Add a link to  point to /systems ... this is for Amins-->
		    <hr>
	    	<p>
	    		<a href="${pageContext.request.contextPath}/systems">IT system Meeting</a> 	
	    		(Only for Admin people)
	    	</p>
    	</security:authorize>
    <hr>


	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
		<input type="submit" value="Logout"/>
	
	</form:form>


</body>

</html>