<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/9/18
  Time: 7:29 PM
--%>

<%@ page import="marksheet.Subject" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
%{--<g:form method="post" action="insert">--}%
    %{--<g:textField name="teacherName" id="teacherName" placeholder="Teacher Name"/><br>--}%
    %{--<g:textField name="teacherAddress" id="teacherAddress" placeholder="Teacher Address"/><br>--}%

    %{--<g:select from="${marksheet.Subject.list()}" noSelection="['':'--Choose Subject--']" name="subject"></g:select>--}%
    %{--<g:submitButton name="save" value="save"/>--}%

<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <g:form class="form-horizontal" role="form"
                    action="insert" controller="teacher">
                <fieldset>
                    <legend style="text-align: center;font-size: x-large">Add Teacher</legend>


                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>
                            <g:textField name="teacherName" id="teacherName" placeholder="Teacher Name" class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-euro"></span>--}%
                            </div>
                            <g:textField name="teacherAddress" id="teacherAddress" placeholder="Teacher Address" class="form-control" required="" autofocus=""/><br>


                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-user"></span>--}%
                            </div>
                                <g:select from="${marksheet.Subject.list()}" noSelection="['':'--Choose Subject--']" name="subject" class="form-control"></g:select><br>
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

</body>
</html>