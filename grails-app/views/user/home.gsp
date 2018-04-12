<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 9:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
    %{--<asset:stylesheet src="bootstrap.css"/>--}%
</head>
<body>
%{--<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">--}%
    %{--<div class="container">--}%
        %{--<div class="navbar-header">--}%
            %{--<a class="navbar-brand" href="#">--}%
                %{--<%--<img alt="Logo" src="${pageContext.request.contextPath}/includes/images/logo.png" class="img-responsive">--%>--}%
            %{--</a>--}%
            %{--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">--}%
                %{--<span class="sr-only">Toggle navigation</span>--}%
                %{--<span class="icon-bar"></span>--}%
                %{--<span class="icon-bar"></span>--}%
                %{--<span class="icon-bar"></span>--}%
            %{--</button>--}%
%{--<g:link controller="user" action="home" class="navbar-brand" >Marksheet</g:link>--}%
        %{--</div>--}%
        %{--<div class="collapse navbar-collapse">--}%
            %{--<ul class="nav navbar-nav navbar-right">--}%
                %{--<li class="active"><g:link controller="user" action="home">Dashboard</g:link></li>--}%
                %{--<li><g:link controller="user" action="list">View User</g:link></li>--}%
                %{--<li><g:link controller="student" action="list">View Student</g:link></li>--}%
                %{--<li><g:link controller="subject" action="list">View Subject</g:link></li>--}%
                %{--<li><g:link controller="teacher" action="list">View Teacher</g:link></li>--}%
                %{--<li><g:link controller="marks" action="list">View Marks</g:link></li>--}%
                %{--<li><g:link controller="classSubject" action="list">View ClassSubject</g:link></li>--}%

            %{--</ul>--}%
        %{--</div><!--/.nav-collapse -->--}%
    %{--</div> <!-- container collapse -->--}%
%{--</div>--}%
<button><g:link controller="user" action="list">View User</g:link></button>
<button><g:link controller="student" action="list">View Student</g:link></button>
<button><g:link controller="subject" action="list">View Subject</g:link></button>
<button><g:link controller="teacher" action="list">View Teacher</g:link></button>
<button><g:link controller="marks" action="list">View Marks</g:link></button>
<button><g:link controller="classSubject" action="list">View ClassSubject</g:link></button>

</body>
</html>