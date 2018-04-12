<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/3/18
  Time: 3:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<g:form method="post" action="update">
    <g:hiddenField name="id" value="${edit.id}"/>
    <g:textField name="username" id="username" value="${edit.username}"/><br>
    <g:passwordField name="password" id="password" value="${edit.password}"/><br>
    <g:submitButton name="update" value="update"/>
</g:form>
</body>
</html>