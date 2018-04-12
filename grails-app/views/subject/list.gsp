<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 12:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<button><g:link controller="subject" action="create">Add new Subject</g:link></button>
<button><g:link controller="user" action="home">Home</g:link></button>
<table border="1">
    <tr>
        <th>S.N.</th>
        <th>Subject Name</th>
        <th>Full Marks</th>
        <th>Pass Marks</th>
        <th>Theory Marks</th>
        <th>Practical Marks</th>

        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <g:each in="${slist}" var="s" status="scount">
        <tr>
            <td>${scount+1}</td>
            <td>${s.subjectName}</td>
            <td>${s.fullMarks}</td>
            <td>${s.passMarks}</td>
            <td>${s.theoryMarks}</td>
            <td>${s.practicalMarks}</td>
            <td><g:link action="edit" id="${s.id}">Edit</g:link> </td>
            <td><g:link action="delete" id="${s .id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>

        </tr>
    </g:each>
</tr>
</table>

</body>
</html>