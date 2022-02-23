<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>FPT University Academic Portal</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/javascript.js" type="text/javascript"></script>
    </head>
    <header>
        <div class="container-xl">
            <div class="table-wrapper">
                <div class="row">
                    <div class="col-md-8">
                        <h1>
                            <span style="color: #000000">FPT University Academic Portal</span>
                        </h1>
                    </div>
                    <div class="col-md-4">
                        <table>
                            <tbody>
                                <tr>
                                    <td colspan="2" class="auto-style1">
                                        <strong>FAP mobile app (myFAP) is ready at</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="https://apps.apple.com/app/id1527723314">
                                            <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store">
                                        </a>
                                    </td>
                                    <td>
                                        <a href="https://play.google.com/store/apps/details?id=com.fuct">
                                            <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store">
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>        
                </div>
            </div>
        </div>
    </header>
    <body style="background-color: #ffffff">
        <h2 style="text-align: center; margin-top: 50px; margin-bottom: 50px; color: #000000">
            <span>Schedule</span>
        </h2>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-3">
                                <h3>Choose Date</h3>
                                <jsp:useBean id="schedule" class="context.ScheduleDAO" scope="request"></jsp:useBean>
                                    <form action="attendence" method="post">
                                        <select name="choosenDate">
                                        <c:if test="${requestScope.choosenDate ne null}">
                                            <option value="${requestScope.choosenDate}" selected>${requestScope.choosenDate}</option>
                                        </c:if>
                                        <c:forEach items="${schedule.dateIn48Hours}" var="date" >
                                            <c:if test="${requestScope.choosenDate ne date}">
                                                <option value="${date}">${date}</option>
                                            </c:if>
                                        </c:forEach>
                                        <input type="submit" value="Choose">
                                    </select>
                                </form>
                            </div>
                        </div>
                    </div>
                    <p class="text-success"><c:out value="${sessionScope.notification}"></c:out></p>
                    <c:remove scope="session" var="notification"></c:remove>
                    <c:if test="${requestScope.listSchedule ne null}">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>NO</th>
                                    <th>SUBJECT NAME</th>						
                                    <th>CLASS</th>
                                    <th>SLOT</th>
                                    <th>OPTION</th>
                                </tr>
                            </thead>
                            <tbody>
                                <jsp:useBean id="attendenceDAO" class="context.AttendenceDAO" scope="request"></jsp:useBean>
                                <c:forEach items="${requestScope.listSchedule}" var="s" varStatus="loop">
                                    <tr>
                                        <td>${loop.count}</td>
                                        <td>${s.getSubject().getSubjectName()}</td>
                                        <td>${s.getClassName().getClassroomName()}</td>
                                        <td>${s.getSlot().getSlotName()}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${attendenceDAO.getAttendenceByScheduleID(s.getScheduleID()).size() eq 0 }">
                                                    <a href="list/attendence?schedule=${s.getScheduleID()}&status=check">Check Attendence</a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="list/attendence?schedule=${s.getScheduleID()}&status=edit">Edit Attendence</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:if>
                </div>
            </div>
        </div>     
    </body>
</html>