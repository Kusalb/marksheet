<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 7:54 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>

    <title></title>
</head>

<body>
<g:form method="post" action="update">
    <g:hiddenField name="id" value="${edit.id}"/>
    <g:textField name="classId" id="classId" value="${edit.classId}"/><br>
    <g:textField name="subject" id="subject" value="${edit.subject}"/><br>
    <g:submitButton name="save" value="save"/>
</g:form>

</body>
</html>