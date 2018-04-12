<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/2/18
  Time: 8:54 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <g:form class="form-horizontal" role="form"
                 action="insert" controller="student">
                <fieldset>
                    <legend style="text-align: center;font-size: x-large">Add Subject</legend>


                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-book"></span>--}%
                            </div>
                            <g:textField name="subjectName" id="subjectName" placeholder="Subject Name" class="form-control" required="" autofocus="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-euro"></span>--}%
                            </div>
                            <g:textField name="fullMarks" id="fullMarks" placeholder="Full Marks" class="form-control" required="" autofocus=""/><br>


                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-user"></span>--}%
                            </div>
                            <g:textField name="passMarks" id="passMarks" placeholder="Pass Marks" class="form-control" required="" autofocus=""/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"></div>
                            <g:textField name="theoryMarks" id="theoryMarks" placeholder="Theory  Marks" class="form-control" required="" autofocus=""/>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                %{--<span class="glyphicon glyphicon-check"></span>--}%
                            </div>
                            <g:textField name="practicalMarks" id="practicalMarks" placeholder="Practical Marks" class="form-control" required="" autofocus=""/><br>
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
<!-- /.container -->
    %{--<g:form method="post" action="insert">--}%
        %{--<g:textField name="subjectName" id="subjectName" placeholder="Subject Name"/><br>--}%
        %{--<g:textField name="fullMarks" id="fullMarks" placeholder="Full Marks"/><br>--}%
        %{--<g:textField name="passMarks" id="passMarks" placeholder="Pass Marks"/><br>--}%
        %{--<g:textField name="theoryMarks" id="theoryMarks" placeholder="Theory Marks"/><br>--}%
        %{--<g:textField name="practicalMarks" id="practicalMarks" placeholder="Practical Marks"/><br>--}%
        %{--<g:submitButton name="save" value="save"/>--}%
    %{--</g:form>--}%
</body>

</html>