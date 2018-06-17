<%--
  Created by IntelliJ IDEA.
  User: Dron
  Date: 05.06.2018
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Devcolibri.com.ua</title>
</head>
<body>
<h1><center>Hello Servlet</center></h1>
<%=new String("Hello World").toUpperCase()%>
5+10=<%=5+10%>
<br>
<% for (int i = 1; i <5 ; i++) {
    out.print("<br/>I really luv2code: "+i);
}%>
<br>
<%! String makeItLowerCase(String data){
    return data.toLowerCase();
}%>
Lower case "Hello world": <%=makeItLowerCase("Hello World")%>
<br>
<br>
The time on server is <%=new java.util.Date()%>
</body>
</html>