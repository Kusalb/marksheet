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
<g:form method="post" action="insert">
    <g:textField name="classId" id="classId" placeholder="Class ID"/><br>
    <g:select from="${marksheet.Subject.list()}" noSelection="['':'--Choose Subject--']" name="subject"></g:select>
    <g:submitButton name="save" value="save"/>
</g:form>
</body>
</html>