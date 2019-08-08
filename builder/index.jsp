<%@ page import="java.net.URL" %>
<%@ page import="java.net.URLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<html>
<body>
<h1>Test the project</h1>
	<%!

	String getResult() {

	String inputLine = "";
	String result = "";
	try {
	    URL targetUrl  = new URL("http://my72-node:8080/index/index.html");
	    URLConnection uc = targetUrl.openConnection();
	    BufferedReader in = new BufferedReader(
                        new InputStreamReader(
                        uc.getInputStream()));

	    while ((inputLine = in.readLine()) != null) {
	        result += inputLine;
	    }

		in.close();
	} catch (Exception e) {
	    e.printStackTrace();
	}
		return result;
    }
%>

<%= getResult()%>

<!--%
    String redirectURL = "http://my72-node:8080/index/index.html";
    response.sendRedirect(redirectURL);
%>
</body>
</html>