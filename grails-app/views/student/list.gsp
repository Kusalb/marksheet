<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 9:19 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<button><g:link controller="student" action="create">Add new Student</g:link></button>
<button><g:link controller="user" action="home">Home</g:link></button>
<g:form method="post" action="list">
    <g:hiddenField name="id" value="0"/>
    <g:select name="classId" from="${[1,2,3,4,5,6,7,8,9,10]}" noSelection="['':'--Choose Class--']">

    </g:select>
    %{--<g:select from="${marksheet.Student.list()}" noSelection="['':'--Choose Class--']" name="classId"></g:select>--}%
    <g:submitButton name="select" value="select"/>
</g:form>
<table border="1">
    <tr>
        <th>S.N.</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Roll No</th>
        <th>Address</th>
        <th>Email</th>
        <th>Class ID</th>
        <th>Section ID</th>

        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <g:each in="${slist}" var="s" status="scount">
        <tr>
            <td>${scount+1}</td>
            <td>${s.firstName}</td>
            <td>${s.lastName}</td>
            <td>${s.rollNo}</td>
            <td>${s.address}</td>
            <td>${s.email}</td>
            <td>${s.classId}</td>
            <td>${s.sectionId}</td>

            <td><g:link action="edit" id="${s.id}">Edit</g:link> </td>
            <td><g:link action="delete" id="${s .id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>

        </tr>
    </g:each>
</tr>
</table>

</body>
</html>