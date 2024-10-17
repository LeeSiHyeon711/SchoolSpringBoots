<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../includes/header.jsp"%>
<div class="card text-bg-dark mb-3">
    <div class="card-header">Modify Page</div>
    <form action="/board/modify" method="get">
        <div class="card-body">
            <div class="input-group mb-3">
                <span class="input-group-text" style="width:80px">Bno</span>
                <input type="text" class="form-control" name="bno" value="${dto.bno}" readonly>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" style="width:80px">Title</span>
                <input type="text" class="form-control" name="title" value="${dto.title}" >
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" style="width:80px">PostDate</span>
                <input type="text" class="form-control" name="date" value="${dto.postdate}" readonly>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" style="width:80px">Writer</span>
                <input type="text" class="form-control" name="writer" value="${dto.writer}">
            </div>
            <div class="input-group">
                <span class="input-group-text" style="width:80px">Content</span>
                <input class="form-control" name="content" value="${dto.content}">
            </div>
            <br>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="button" class="btn btn-outline-success">modify</button>
                <button type="button" class="btn btn-outline-light">back</button>
            </div>
        </div>
    </form>
    <script>
        const formObj=document.querySelector("form")

        document.querySelector(".btn-outline-success").addEventListener("click",function (e) {
            e.preventDefault();
            e.stopPropagation();
            formObj.action="/board/modify";
            formObj.method="POST"
            formObj.submit();
        }, false);

        document.querySelector(".btn-outline-light").addEventListener("click",function (e) {
            e.preventDefault();
            e.stopPropagation();
            self.location="/board/list";
        }, false);
    </script>
</div>
<%@ include file="../includes/footer.jsp"%>