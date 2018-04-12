<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 7:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>

    <meta name="layout" content="main"/>
</head>
<body>
<g:form method="post" action="insert">
    <g:select from="${marksheet.Student.list()}" noSelection="['':'--Choose Student--']" name="student"></g:select>
    <g:select from="${marksheet.Subject.list()}" noSelection="['':'--Choose Subject--']" name="subject"></g:select>
    <g:textField name="obtainedMarks" id="obtainedMarks" placeholder="Marks Obtained"/><br>
    <g:submitButton name="save" value="save"/>
</g:form>


</body>
</html>