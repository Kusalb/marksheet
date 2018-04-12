<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 7:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container">
    <div class="row">
        <button><g:link controller="teacher" action="create">Add new Teacher</g:link></button>
        <button><g:link controller="user" action="home">Home</g:link></button>
        <button><g:link controller="teacher" action="assign">Assign Subject</g:link></button>

        <table border="1">
            <tr>
                <th>S.N.</th>
                <th>Teacher Name</th>
                <th>Teacher Address</th>
                <th>Subject</th>

                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <g:each in="${tlist}" var="t" status="scount">
                <tr>
                    <td>${scount+1}</td>
                    <td>${t.teacherName}</td>
                    <td>${t.teacherAddress}</td>
                    <td>${t.subject.subjectName}</td>
                    <td><g:link action="edit" id="${t.id}">Edit</g:link> </td>
                    <td><g:link action="delete" id="${t.id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>
                </tr>
            </g:each>
        </tr>
        </table>
    </div>
</div>
</body>
</html>