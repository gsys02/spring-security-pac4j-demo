
<script type="text/javascript">
expireAt = new Date;
expireAt.setMonth(expireAt.getMonth() - 1);

if (document.cookie != "")
{
        crumbs = document.cookie.split(";");
        for(i=0; i < crumbs.length; i++)
        {
            crumbName = crumbs[i].split("=")[0];
            document.cookie = crumbName + "=;expires=" + expireAt.toGMTString();
        }
}

</script>

<%@page
	import="org.pac4j.springframework.security.authentication.ClientAuthenticationToken"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>

<h1>LOGOUT</h1>
<a href="..">Back</a>



