<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<!--

//-->
</script>
<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
            
                <a class="navbar-brand" href="#!">운동 일지</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="http://localhost:8080/my/">홈 </a></li>
                        <c:if test="${sessionScope.login == null}">
	                        <li class="nav-item"><a class="nav-link" href="http://localhost:8080/my/loginView">로그인</a></li>
	                        <li class="nav-item"><a class="nav-link" href="http://localhost:8080/my/registView">회원가입</a></li>
                        </c:if>
                        <c:if test="${sessionScope.login != null}">
	                        <li class="nav-item"><a class="nav-link" href="http://localhost:8080/my/mypageView">${sessionScope.login.memId} 님</a></li>
	                        <li class="nav-item"><a  class="nav-link" href="<c:url value="/inbodyView" />">인바디</a></li>
	                        <li class="nav-item"><a  class="nav-link" href="<c:url value="/chatView" />">식단GPT</a></li>
	                        <li class="nav-item"><a  class="nav-link" href="<c:url value="/movementView01" />">칼로리</a></li>
	                        <li class="nav-item"><a  class="nav-link" href="<c:url value="/boardView" />">회원게시판</a></li>
	                        <li class="nav-item"><a class="nav-link" href="<c:url value="/logoutDo" /> ">로그아웃</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>