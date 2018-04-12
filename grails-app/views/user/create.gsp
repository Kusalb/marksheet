<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/2/18
  Time: 6:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Create Form</title>
    %{--<asset:stylesheet src="bootstrap.css"/>--}%
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4"  style="padding-top: 3%; padding-bottom: 3%; background-color:#edeeef; margin-top:10%;">
            <form method="post" action="login">
                <h4>Sign Up</h4>
                <hr>
                <div class="form-group">
                    <label for="username">Username</label>
                    <g:textField name="username" class="form-control" id="username" placeholder="Username"/><br>


                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <g:passwordField name="password" id="password"  class="form-control"placeholder="Password"/><br>
                </div>
                <div style="padding-top:4%;">
                    <g:submitButton name="create" value="Create"  class="btn btn-primary btn-block"/>

                </div>
            </form>
        </div>
    </div>
</body>
</html>