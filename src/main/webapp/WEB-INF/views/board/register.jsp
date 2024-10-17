<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../includes/header.jsp"%>
<div class="card text-bg-dark mb-3">
    <div class="card-header">Register Page</div>
    <form action="/board/register" method="post">
        <div class="card-body">
            <div class="input-group mb-3">
                <span class="input-group-text" style="width:80px">Title</span>
                <input type="text" class="form-control" name="title" placeholder="Title..." required>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" style="width:80px">Writer</span>
                <input type="text" class="form-control" name="writer" placeholder="Writer..." required>
            </div>
            <div class="input-group">
                <span class="input-group-text" style="width:80px">Content</span>
                <textarea class="form-control" name="content" aria-label="With textarea" placeholder="Content..." required></textarea>
            </div>
            <br>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-outline-primary">submit</button>
                <button type="reset" class="btn btn-outline-secondary">reset</button>
                <button type="button" onclick="location.href='/board/list'" class="btn btn-outline-light">back</button>
            </div>
        </div>
    </form>
</div>
<%@ include file="../includes/footer.jsp"%>