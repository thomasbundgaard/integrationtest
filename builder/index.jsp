<%@ page import="java.net.URL" %>
<%@ page import="java.net.URLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<html>
<body>
<h1>Test the project</h1>
	<%
	
	URL targetUrl  = new URL("http://my72-node:8080/index");
	URLConnection uc = targetUrl.openConnection();
	BufferedReader in = new BufferedReader(
                        new InputStreamReader(
                        uc.getInputStream()));
	String inputLine;

	while ((inputLine = in.readLine()) != null) 
		System.out.println(inputLine);
		in.close();
%>
</body>
</html>