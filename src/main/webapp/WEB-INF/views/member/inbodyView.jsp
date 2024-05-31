<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InBody</title>
</head>

<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- Contact Section-->
	<section class="page-section" id="contact" style="margin-top: 150px">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">InBody</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<form method="post" action="<c:url value="/inbodyDo" />">
						<div class="form-floating mb-3">
							<input class="form-control" name="exerKg" id="exerKg" type="text"
								placeholder="몸무게를 입력해주세요" data-sb-validations="required" /> <label
								for="exerKg">몸무게</label>
						</div>
						<div class="form-floating mb-3">
							<input class="form-control" id="exerFkg" name="exerFkg"
								type="text" placeholder="목표 몸무게를 입력해주세요"
								data-sb-validations="required" /> <label for="memPw">목표
								몸무게</label>
						</div>
						<div class="form-floating mb-3">
							<input class="form-control" id="exerBmi" name="exerBmi"
								type="text" placeholder="비만도를 입력해주세요"
								data-sb-validations="required" /> <label for="memNm">비만도</label>
						</div>
						<div class="form-floating mb-3">
							<input class="form-control" id="exerMu" name="exerMu" type="text"
								placeholder="근육량을 입력해주세요" data-sb-validations="required" /> <label
								for="memKg">근육량</label>
							<div class="invalid-feedback"
								data-sb-feedback="kilogram:required">An kilogram is
								required.</div>
						</div>
						<button class="btn btn-primary btn-xl" id="submitButton"
							type="submit">저장하기</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>

</body>
</html>