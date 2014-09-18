<script type="text/javascript">
	
</script>

<%@page
	import="org.pac4j.springframework.security.authentication.ClientAuthenticationToken"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>



<%
	Cookie[] cookies = request.getCookies();

	for (int i = 0; i < cookies.length; i++) {

		if (cookies[i].getName().equals("JSESSIONID")) {

			cookies[i].setMaxAge(-1);
			cookies[i].setValue(null);

			response.addCookie(cookies[i]);
		}
	}
%>



<h1>LOGOUT</h1>
<a href="..">Back</a>



