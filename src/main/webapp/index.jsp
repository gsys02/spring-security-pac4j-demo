<%@page import="org.pac4j.core.exception.RequiresHttpAction"%>
<%@page import="org.pac4j.springframework.security.authentication.*"%>
<%@page import="org.springframework.security.core.*"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.pac4j.core.context.*"%>
<%@page import="org.pac4j.core.profile.*"%>
<%@page import="org.pac4j.http.client.*"%>
<%@page import="org.pac4j.cas.client.*"%>

<%
	WebContext context = new J2EContext(request, response); 
	CasClient casClient = (CasClient) application.getAttribute("CasClient");
%>
<h1>index</h1>
<a href="cas/index.jsp">Protected url by CAS : cas/index.jsp</a><br />
<br />
<a href="/j_spring_security_logout">logout</a>
<br /><br />

<%Authentication auth = (Authentication) SecurityContextHolder.getContext().getAuthentication();
UserProfile profile = null;
if (auth != null && auth instanceof ClientAuthenticationToken) {
    ClientAuthenticationToken token = (ClientAuthenticationToken) auth; 
    profile = token.getUserProfile();
}
%>
profile : <%=profile%>
<br /><br />
<hr />
<%
try {
%>
<a href="<%=casClient.getRedirectAction(context, false, false).getLocation()%>">Authenticate with CAS</a><br />
<%
} catch (RequiresHttpAction e) {
	// should not happen
}
%>
