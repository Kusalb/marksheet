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
<div class="container">
    <div class="row">
        <button><g:link controller="marks" action="create">Add new Marks</g:link></button>
        <button><g:link controller="user" action="home">Home</g:link></button>
        <table border="1">
            <tr>
                <th>S.N.</th>
                <th>student</th>
                <th>subject</th>
                <th>Obtained Marks</th>

                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <g:each in="${mlist}" var="m" status="scount">
                <tr>
                    <td>${scount+1}</td>
                    <td>${m.student.firstName}</td>
                    <td>${m.subject.subjectName}</td>
                    <td>${m.obtainedMarks}</td>
                    <td><g:link action="edit" id="${m.id}">Edit</g:link> </td>
                    <td><g:link action="delete" id="${m .id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>

                </tr>
            </g:each>
        </tr>
        </table>
    </div>
</div>
</body>
</html>