<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.DomObj.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.utils.ConnectionToBd" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    List<Student> studentList = new ArrayList<>();
    Connection connection = ConnectionToBd.createConnection();
    PreparedStatement pr = connection.prepareStatement("SELECT * FROM student2");
    ResultSet rs = pr.executeQuery();
    while (rs.next()) {
        studentList.add(new Student(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
    }
    pageContext.setAttribute("studentList", studentList);
%>
<body>
<h2>All students:</h2>
<table border="2">
    <tr>
        <th>name</th>
        <th>sername</th>
        <th>gender</th>
        <th>phone</th>
    </tr>
    <c:forEach var="student" items="${studentList}">
        <tr>
            <td>${student.name}</td>
            <td>${student.sername}</td>
            <td>${student.gender}</td>
            <td>${student.phone}</td>
        </tr>
    </c:forEach>
</table>
<table border="2">
    <tr>
        <th>name</th>
        <th>sername</th>
        <th>gender</th>
        <th>phone</th>
    </tr>
    <h2>${param.gender}</h2>
    <c:forEach var="student" items="${studentList}">
        <c:if test="${student.gender.equals(param.gender)}">
            <tr>
                <td>${student.name}</td>
                <td>${student.sername}</td>
                <td>${student.gender}</td>
                <td>${student.phone}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>
</body>
</html>