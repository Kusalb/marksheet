<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 7:44 PM
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
    <g:textField name="student" id="student" value="${edit.student}"/><br>
    <g:textField name="subject" id="subject"  value="${edit.subject}"/><br>
    <g:textField name="obtainedMarks" id="obtainedMarks"  value="${edit.obtainedMarks}"/><br>
    <g:submitButton name="save" value="save"/>
</g:form>
</body>
</html>