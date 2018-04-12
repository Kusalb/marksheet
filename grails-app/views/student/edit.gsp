<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/10/18
  Time: 8:03 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>

    <title></title>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <g:form class="form-horizontal" role="form"
                    action="update" method="post">
                <fieldset><g:hiddenField name="id" value="${edit.id}"/>

                    <legend style="text-align: center;font-size: x-large">Edit Student Details</legend>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>
                            <g:textField name="firstName" id="firstName" value="${edit.firstName}" class="form-control" required="" autofocus="" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="lastName" id="lastName" value="${edit.lastName}" class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="rollNo" id="rollNo" value="${edit.rollNo}" class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="address" id="address" value="${edit.address}"  class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="email" id="email" value="${edit.email}"   class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="classId" id="classId" value="${edit.classId}"  class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>

                            <g:textField name="sectionId" id="sectionId" value="${edit.sectionId}"   class="form-control" required="" autofocus="" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-6">
                            <g:submitButton  class="btn btn-primary form-control"
                                             name="save" value="Update"/>

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

%{--<g:form method="post" action="update">--}%
    %{--<g:hiddenField name="id" value="${edit.id}"/>--}%
    %{--<g:textField name="firstName" id="firstName" value="${edit.firstName}"/><br>--}%
    %{--<g:textField name="lastName" id="lastName" value="${edit.lastName}"/><br>--}%
    %{--<g:textField name="rollNo" id="rollNo" value="${edit.rollNo}"/><br>--}%
    %{--<g:textField name="address" id="address" value="${edit.address}"/><br>--}%
    %{--<g:textField name="email" id="email" value="${edit.email}"/><br>--}%
    %{--<g:textField name="classId" id="classId" value="${edit.classId}"/><br>--}%
    %{--<g:textField name="sectionId" id="sectionId" value="${edit.sectionId}"/><br>--}%
    %{--<g:submitButton name="save" value="save"/>--}%
%{--</g:form>--}%
</body>
</html>