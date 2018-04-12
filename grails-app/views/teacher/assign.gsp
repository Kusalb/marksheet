<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/11/18
  Time: 2:58 PM
--%>

<%@ page import="marksheet.ClassSubject" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>

    <title></title>
</head>

<body>
<button><g:link controller="teacher" action="create">Add new Teacher</g:link></button>
<button><g:link controller="user" action="home">Home</g:link></button>

%{--<g:form method="post" action="set">--}%
    %{--<g:hiddenField name="id" value="0"/>--}%

    %{--<g:select name="teacher" from="${marksheet.Teacher.list().teacherName}"  noSelection="['':'--Choose Teacher--']"></g:select>--}%
    %{--<select name="classSubject">--}%
        %{--<option disabled selected> Choose a subject </option>--}%
        %{--<g:each in="${marksheet.ClassSubject.list()}" status="i" var="classInstance">--}%
            %{--<option value="${classInstance}"> Class ${classInstance.classId} - ${classInstance.subject}</option>--}%
        %{--</g:each>--}%
    %{--</select>--}%

%{--<g:select from="${marksheet.Student.list()}" noSelection="['':'--Choose Class--']" name="classId"></g:select>--}%
    %{--<g:submitButton name="select" value="select"/>--}%
%{--</g:form>--}%
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <g:form class="form-horizontal" role="form"
                    action="set" controller="teacher">
                <g:hiddenField name="id" value="assign"></g:hiddenField>
                <fieldset>
                    <legend style="text-align: center;font-size: x-large">Assign Class</legend>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-user"></span>--}%
                            </div>
                            <g:select name="teacher" from="${marksheet.Teacher.list().teacherName}"  noSelection="['':'--Choose Teacher--']" class="form-control" required=""></g:select>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-user"></span>--}%
                            </div>
                            <g:select name="classId" from="${[1,2,3,4,5,6,7,8,9,10]}"  noSelection="['':'--Choose Class--']" class="form-control" required=""></g:select>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-user"></span>--}%
                            </div>

                            <g:select name="classSubject" from="${marksheet.Subject.list().subjectName}" required=""></g:select>
                            %{--<g:textField name="classSubject" value="${marksheet.ClassSubject.findByClassId.toString()}"></g:textField>--}%
                            %{--<g:select name="classId" from="${[1,2,3,4,5,6,7,8,9,10]}"  noSelection="['':'--Choose Subject--']" class="form-control"></g:select>--}%
                            %{--<select name="classSubject" class="form-group">--}%
                                %{--<option disabled selected> Choose a subject </option>--}%
                                %{--<g:each in="${marksheet.ClassSubject.list()}" status="i" var="classInstance">--}%
                                    %{--<option value="${classInstance}"> Class ${classInstance.classId} - ${classInstance.subject}</option>--}%
                                %{--</g:each>--}%
                            %{--</select>--}%

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-6">
                            <g:submitButton  class="btn btn-primary form-control"
                                             name="save" value="Assign"/>

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