<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:fourthingsplus>
    <jsp:attribute name="header">
         Welcome to the logged in area
    </jsp:attribute>

    <jsp:body>

        <form method="post">
            <h3>Tasks in progress</h3>
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
                            <td>
                                    ${item.name} (${item.created})
                            </td>
                            <td>
                                <button formaction="toggleitem" name="item_id" value="${item.id}">
                                    Done
                                </button>
                            </td>
                        </tr>
                    </c:if>
                </c:forEach>
            </table>

            <h3>Completed tasks</h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Item</th>
                    <th>Action</th>
                </tr>
                </thead>
                <c:forEach var="item" items="${requestScope.itemList}">
                    <c:if test="${item.done == true}">
                        <tr>
                            <td>
                                    ${item.name} (${item.created})
                            </td>
                            <td>
                                Undo
                            </td>
                        </tr>
                    </c:if>
                </c:forEach>
            </table>
        </form>

    </jsp:body>

</t:fourthingsplus>