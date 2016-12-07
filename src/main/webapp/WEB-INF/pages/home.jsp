<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Test project 'Police Department'">
    <meta name="author" content="Obelets Sergey">

    <title>Index</title>

    <!-- CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/dashboard.css" rel="stylesheet">


</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Police Patrol</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Help</a></li>
            </ul>
&lt;%&ndash;            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>&ndash;%&gt;
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
                <li><a href="<c:url value="/test"/>">TESTING</a></li>
                <li><a href="<c:url value="/person"/>">Person</a></li>
                <li><a href="#">Export</a></li>
            </ul>
        </div>--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


        <%--<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">--%>
            <h1 class="page-header">Police Board</h1>


            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="<c:url value="/persons"/>">
                    <img src="resources/images/dispatcher.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    </a>
                        <h4>Dispatcher</h4>
                    <span class="text-muted">Board of all personal on patrol car and moving on foot.</span>

                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="resources/images/sheriff.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Person's</h4>
                    <span class="text-muted">Information about particular person with Edit option</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="resources/images/car.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Car personal</h4>
                    <span class="text-muted">Edit personal of particular patrol Car</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="resources/images/mechanic.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Car</h4>
                    <span class="text-muted">Mechanic department: change car characteristic</span>
                </div>
            </div>


            <%--Table of police patrol--%>


            <table class="table table-bordered">
                <tr>
                    <td>${patrolCar.name}</td>
                    <td rowspan="4">

                        <table class="table table-sm">
                            <c:forEach items="${patrolCar.personsInCar}" var="personsInCar">
                                <tr>
                                    <td rowspan="3">NO_PERSON_PHOTO</td>
                                    <td class="bg-info">First name:</td>
                                    <td>${personsInCar.firstName}</td>
                                </tr>
                                <tr>
                                    <td class="bg-success">Last name:</td>
                                    <td>${personsInCar.lastName}</td>
                                </tr>
                                <tr>
                                    <td class="bg-danger">Range:</td>
                                    <td >${personsInCar.rank}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>Car capacity: ${patrolCar.carCapacity}</td>
                </tr>
                <tr>
                    <td>NO_CAR_PHOTO</td>
                </tr>
                <tr>
                    <td>${patrolCar.description}</td>
                </tr>
            </table>

    <br/>

        <%--</div>--%>


<%@include file="/WEB-INF/pages/template/footer.jsp"%>




<%--    </div>
</div>

<!-- Bootstrap core JavaScript-->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
<script>window.jQuery || document.write('<script src="resources/js/jquery-3.1.1.min"><\/script>')</script>
<script src="resources/js/bootstrap.min.js"></script>


</body>
</html>--%>
