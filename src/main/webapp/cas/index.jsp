<%@page
	import="org.pac4j.springframework.security.authentication.ClientAuthenticationToken"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<h1>AREA PROTEGIDA</h1>
<a href="..">Back</a>
<br />
<br />
<br />
<a href="restricted.jsp">Go to page restricted to ADMIN users</a>
<br />
<br />

<%
	ClientAuthenticationToken token = (ClientAuthenticationToken) SecurityContextHolder
			.getContext().getAuthentication();
%>

profile :
<%=token.getUserProfile()%>
