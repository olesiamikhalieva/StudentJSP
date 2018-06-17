<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %>--%>

<p>second way:</p>
<br/>
The student is conﬁrmed: ${param.values()}
The student is conﬁrmed: ${param.lastName} ${param.firstName}

</body>
</html>
