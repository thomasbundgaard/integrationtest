<html>
<body>
	<%
	
	URL targetUrl  = new URL("http://www.yahoo.com/");
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