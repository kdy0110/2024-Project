<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title></title>
        <c:if test="${not empty msg}">
	        <script>
	 			alert("${msg}");       
	        </script>
        </c:if>
    </head>
    
    <!-- nav 영역	 -->
    	<jsp:include page="/WEB-INF/inc/top.jsp" ></jsp:include>
    	<!-- nav 영역	 -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Full Width Pics - Start Bootstrap Template</title>
        
        <!-- Header - set the background image for the header in the line below-->
        <header class="py-5 bg-image-full" style="background-image: url('/my/resources/img/974575-fitness.jpg')">
            <div class="text-center my-5">
<!--                 <img src="/resources/img/974575-fitness.jpg" alt="..." /> -->
                <h1 class="text-white fs-3 fw-bolder">매일 성장하는 나,</h1>
                <p class="text-white-50 mb-0">내일은 또 다른 나.</p>
            </div>
        </header>
        <!-- Content section-->
        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h2>운동을 더 재미있고 효율적으로</h2>
                        <p class="lead">진짜 근성장을 이루고 싶다면 운동을 기록해 보세요.</p>
                        <p class="mb-0">화이팅!!!</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Image element - set the background image for the header in the line below-->
        <div class="py-5 bg-image-full" style="background-image: url('/my/resources/img/스크린샷 2024-03-14 213557.png	')">
            <!-- Put anything you want here! The spacer below with inline CSS is just for demo purposes!-->
            <div style="height: 20rem"></div>
        </div>
        <!-- Content section-->
        <section class="py-5">
            <div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col" >
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/>
            <image href="resources/img/cvxzfdsxvc.jpg" width="100%"/>
            </svg>
            <div class="card-body" >
              <p class="card-text">털털 털리는 하체운동!!</p>
              <hr>
              <br>
              <br>
              <br>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group"> 
					<button type="button" class="btn btn-sm btn-outline-secondary" onclick="moveToNewPage1()">이동</button> 
					<script> 
					    var page1 = "<c:url value='/quadsView' />";
					    
					    function moveToNewPage1() {
					        // 새로운 페이지로 이동합니다. 이동할 페이지의 URL을 지정합니다.
					        window.location.href = page1;
					    };
					</script>             
                </div>
                <small class="text-body-secondary"></small>
              </div> 
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/>
            <image href="resources/img/wide-grip-lat-pulldown1.jpg" width="100%"/>
            </svg>
            <div class="card-body">
              <p class="card-text">일주일에 단 2번으로 수행하는 전신 운동 루틴</p>
              <hr>
              <br>
              <br>
              <br>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="move()">이동</button>   
					<script> 
					    var page2 = "<c:url value='/exc1View' />";
					    
					    function move() {
					        // 새로운 페이지로 이동합니다. 이동할 페이지의 URL을 지정합니다.
					        window.location.href = page2;
					    };
					</script>                  
                </div>
                <small class="text-body-secondary"></small>
              </div>
            </div>
          </div>
        </div><div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/>
            <image href="resources/img/스크린샷 2024-03-14 160901.png" width="100%"/>
            </svg>
            <div class="card-body">
              <p class="card-text">홈트를 위한 간편한 맨몸 운동 루틴</p>
              <hr>
              <br>
              <br>
              <br>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="moveToNewPage2()">이동</button>
					<script>
					    var page3 = "<c:url value='/exc2View' />"; // 변수에 직접 URL을 할당합니다.
					    
					    function moveToNewPage2() {
					        // 새로운 페이지로 이동합니다. 이동할 페이지의 URL을 지정합니다.
					        window.location.href = page3;
					    }
					</script>                  
                </div>
                <small class="text-body-secondary"></small>
              </div>
            </div>
          </div>
        </div>
        </div><div class="album py-5 bg-body-tertiary">
    <div class="container">
        </section>
        
        
        
        <!-- footer영역 -->
		<jsp:include page="/WEB-INF/inc/footer.jsp" ></jsp:include>
		<!-- footer영역 -->
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
