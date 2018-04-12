<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 7:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>

    <title></title>
</head>

<body>
<button><g:link controller="classSubject" action="create">Add new Class Subject</g:link></button>
<button><g:link controller="user" action="home">Home</g:link></button>
<table border="1">
    <tr>
        <th>S.N.</th>
        <th>Class ID</th>
        <th>Subject</th>

        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <g:each in="${clist}" var="c" status="scount">
        <tr>
            <td>${scount+1}</td>
            <td>${c.classId}</td>
            <td>${c.subject.subjectName}</td>

            <td><g:link action="edit" id="${c.id}">Edit</g:link> </td>
            <td><g:link action="delete" id="${c .id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>

        </tr>
    </g:each>
</tr>
</table>

</body>
</html>