<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/3/18
  Time: 3:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
    %{--<asset:stylesheet src="bootstrap.css"/>--}%
</head>

<body>
<div class="container">
    <div class="row">
        <button> <g:link controller="user" action="create">Add new user</g:link></button>
        <button><g:link controller="user" action="home">Home</g:link></button>
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th>S.N.</th>
                <th>Username</th>
                <th>Password</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${ulist}" var="u" status="ucount">
            <tr>
                <td>${ucount+1}</td>
                <td>${u.username}</td>
                <td>${u.password}</td>
                <td><g:link action="edit" id="${u.id}">Edit</g:link> </td>
                <td><g:link action="delete" id="${u.id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>
            </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>