<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<form id="signin" action="<c:url value="/signin/authenticate" />" method="post">
	<div class="header">
  		<h2>Sign in</h2>
  		<c:if test="${not empty signinErrorMessage}">
  			<div class="error">The sign-in info you entered was incorrect.  Please try again or <a href="<c:url value="/signup" />">sign up</a>.</div>
 	 	</c:if>
	</div>	
  	<fieldset>
		<label for="login">Username or Email</label>
		<input id="login" name="j_username" type="text" size="25" autocorrect="off" autocapitalize="off" />
		<label for="password">Password</label>
		<input id="password" name="j_password" type="password" size="12" />
	</fieldset>
	<input type="submit" value="Sign In"/>
</form>