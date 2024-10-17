<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../includes/header.jsp"%>
<div class="card text-bg-dark mb-3">
    <div class="card-header">Board Detail</div>
    <div class="card-body">
        <form>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="row" style="width:20%">Bno</th>
                    <td>${dto.bno}</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Title</th>
                    <td>${dto.title}</td>
                </tr>
                <tr>
                    <th scope="row">Writer</th>
                    <td>${dto.writer}</td>
                </tr>
                <tr>
                    <th scope="row">Content</th>
                    <td>${dto.content}</td>
                </tr>
                <tr>
                    <th scope="row">PostDate</th>
                    <td>${dto.postdate}</td>
                </tr>
                <tr>
                    <th scope="row">VisitCount</th>
                    <td>${dto.visitcount}</td>
                </tr>
                </tbody>
            </table>
            <br>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="button" class="btn btn-outline-success">modify</button>
                <button type="button" class="btn btn-outline-danger">Delete</button>
                <button type="button" class="btn btn-outline-light">back</button>
            </div>
        </form>
        <script>
            const formObj = document.querySelector("form");

            // Modify 버튼 클릭 시 POST 요청으로 수정 처리
            document.querySelector(".btn-outline-success").addEventListener("click",function (e){
                self.location=`/board/modify?bno=${dto.bno}`
            })

            // Remove 버튼 클릭 시 POST 요청으로 삭제 처리
            document.querySelector(".btn-outline-danger").addEventListener("click", function (e) {
                e.preventDefault();
                formObj.action = `/board/remove?bno=${dto.bno}`;
                formObj.method = 'POST';
                formObj.submit();
            });

            // 목록으로 돌아가기 (GET 방식 사용 가능)
            document.querySelector(".btn-outline-light").addEventListener("click", function (e) {
                e.preventDefault();
                self.location = "/board/list";
            });
        </script>
    </div>
</div>
<%@ include file="../includes/footer.jsp"%>