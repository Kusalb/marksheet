<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 8:59 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
    %{--<asset:stylesheet src="bootstrap.css"></asset:stylesheet>--}%
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <g:form class="form-horizontal" role="form"
                    action="register" controller="student">
                <fieldset>
                    <legend style="text-align: center;font-size: x-large">Add Student</legend>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>
                            <g:textField name="firstName" id="firstName" placeholder="first_name" class="form-control" required="" autofocus="" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="lastName" id="lastName" placeholder="last_name" class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="rollNo" id="rollNo" placeholder="roll_no" class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="address" id="address" placeholder="address"  class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="email" id="email" placeholder="email"   class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="classId" id="classId" placeholder="class id"  class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="sectionId" id="sectionId" placeholder="section id"   class="form-control" required="" autofocus="" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-6">
                            <g:submitButton  class="btn btn-primary form-control"
                                             name="save" value="Add"/>

                        </div>
                        <div class="col-lg-6">
                            <g:submitButton name="Reset" type="reset" class="btn btn-danger form-control"/>
                            %{--<a href=\"/bo<button class=\"btn btn-default form-control\" type=\"reset\">Reset</button>"%>--}%
                            <%--<button class="btn btn-default form-control" type="reset">Reset</button>--%>
                            <%--<a href="users" class="btn btn-default form-control">Cancel</a>--%>
                        </div>
                    </div>
                </fieldset>
            </g:form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
%{--<div class="container">--}%
    %{--<div class="row">--}%
        %{--<div class="col-md-4"></div>--}%
        %{--<div class="form col-md-4" style="margin-top: 50px;" >--}%
            %{--<g:form method="post" action="register">--}%
                %{--<label>First Name</label><br>--}%
                %{--<g:textField name="firstName" id="firstName" placeholder="first_name" required=""/><br>--}%
                %{--<label>Last Name</label><br>--}%
                %{--<g:textField name="lastName" id="lastName" placeholder="last_name" required=""/><br>--}%
                %{--<label>Roll</label><br>--}%
                %{--<g:textField name="rollNo" id="rollNo" placeholder="roll_no" required=""/><br>--}%
               %{--<label>Address</label><br>--}%
                %{--<g:textField name="address" id="address" placeholder="address" required=""/><br>--}%
                %{--<label>Email</label><br>--}%
                %{--<g:textField name="email" id="email" placeholder="email" required=""/><br>--}%
                %{--<label>Class Id</label><br>--}%
                %{--<g:textField name="classId" id="classId" placeholder="class id" required=""/><br>--}%
                %{--<label>Section Id</label><br>--}%
                %{--<g:textField name="sectionId" id="sectionId" placeholder="section id" required=""/><br>--}%
                %{--<g:submitButton name="register" value="register"/>--}%
            %{--</g:form>--}%
        %{--</div>--}%
        %{--<div class="col-md-4"></div>--}%
    %{--</div>--}%
%{--</div>--}%

</body>
</html>