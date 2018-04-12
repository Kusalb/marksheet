<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/10/18
  Time: 5:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form method="post" action="update">
    <g:hiddenField name="id" value="${edit.id}"/>
    <g:textField name="teacherName" id="teacherName" value="${edit.teacherName}"/><br>
    <g:textField name="teacherAddress" id="teacherAddress" value="${edit.teacherAddress}"/><br>

    <g:select from="${marksheet.Subject.list()}" noSelection="['':'--Choose Subject--']" name="subject"></g:select>
    <g:submitButton name="save" value="save"/>
</g:form>
</body>
</html>