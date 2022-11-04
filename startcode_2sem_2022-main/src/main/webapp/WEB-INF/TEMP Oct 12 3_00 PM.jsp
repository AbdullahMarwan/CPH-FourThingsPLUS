<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:fourthingsplus>
    <jsp:attribute name="header">
         Welcome to the logged in area
    </jsp:attribute>

    <jsp:body>

        <h3>Doing</h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Item</th>
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach var="item" items="${requestScope.itemList}">
                <c:if test="${item.done == false}">
                    <tr>
                        <td>${item.name} (${item.created})</td>
                        <td>Done</td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>
        
        <h3>Done - left in the dust</h3>
        <ul>
            <c:forEach var="item" items="${requestScope.itemList}">
                <c:if test="${item.done == true}">
                    <li>${item.name} (${item.created})</li>
                </c:if>
            </c:forEach>
        </ul>

    </jsp:body>

</t:fourthingsplus>