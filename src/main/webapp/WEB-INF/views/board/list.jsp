<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../includes/header.jsp"%>
<div class="card text-bg-dark mb-3">
    <div class="card-header">List Page</div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Bno</th>
                <th scope="col">Title</th>
                <th scope="col">Writer</th>
                <th scope="col">PostDate</th>
                <th scope="col">VisitCount</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${boardList}" var="dto">
                <tr>
                    <th scope="row">${dto.bno}</th>
                    <td><a href="/board/read?bno=${dto.bno}">${dto.title}</a></td>
                    <td>${dto.writer}</td>
                    <td>${dto.postdate}</td>
                    <td>${dto.visitcount}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@ include file="../includes/footer.jsp"%>