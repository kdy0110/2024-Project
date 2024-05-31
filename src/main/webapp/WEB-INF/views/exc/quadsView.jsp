<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>!하체!</title>
<style>
    /* 테이블 스타일 */
    table {
        width: 100%; /* 테이블 전체 너비를 차지하도록 설정 */
        border-collapse: collapse; /* 테두리가 서로 겹치도록 설정 */
        
    }
    thead{
       text-align: center; 
    }

    th, td {
        padding: 8px; /* 셀 내부 여백 설정 */
        border-bottom: 1px solid #ddd; /* 아래쪽 테두리 설정 */
        text-align: center; /* 텍스트 가운데 정렬 */
    }

    th {
        background-color: #f2f2f2; /* 헤더 배경색 지정 */
    }

    /* 이미지 스타일 */
    img {
        display: block; /* 이미지를 블록 요소로 설정하여 가운데 정렬 */
        margin: 0 auto; /* 가운데 정렬 */
    }
</style>
</head>

<body>
	<jsp:include page="/WEB-INF/inc/top.jsp" ></jsp:include>
	 <!-- Contact Section-->
	<section class="page-section" id="contact" style="margin-top: 0px; text-align: center;">
    <div style="display: flex; flex-direction: column; align-items: center;">
        <h3 class="wp-block-heading has-raft-fg-color has-text-color" style="margin-bottom: 20px;">덤벨 런지 – 3세트 10회</h3>
        <img decoding="async" sizes="(max-width: 480px) 150px"
            src="https://burnfit.io/wp-content/uploads/2023/11/DB_LUNGE.gif"
            alt="" width="540" height="540" title="" loading="lazy"
            data-src="https://burnfit.io/wp-content/uploads/2023/11/DB_LUNGE.gif"
            class="lazyloaded" data-eio-rwidth="500" data-eio-rheight="500" style="margin-bottom: 20px;">
            
        <div style="text-align: center; margin-bottom: 20px;">
            <div style="margin-bottom: 10px;">
                <strong>1. 양발을 골반 너비만큼 벌리고 덤벨을 양손에 든 상태로 상체를 곧게 펴고 섭니다.</strong>
            </div>
            <div style="margin-bottom: 10px;">
                <strong>2. 한쪽 다리를 뻗어 앞으로 나가면서 두 무릎이 90도 각도를 이룰 때까지 엉덩이를 낮춰줍니다. 이때 상체와 등은 곧게 편 자세를 유지합니다.</strong>
            </div>
            <div style="margin-bottom: 10px;">
                <strong>3. 앞발의 뒤꿈치에 무게 중심을 실어서 몸을 위쪽으로 밀어주며 원래 시작 자세로 돌아옵니다.</strong>
            </div>
            <div>
                한 손에 덤벨을 들고 한 발을 앞으로 내딛은 후, 무릎을 굽혀 양쪽 다리를 각각 90도 각도로 만드는 운동입니다. 허벅지, 엉덩이, 종아리 근육을 강화하며, 균형 감각과 안정성을 향상시키는 데 도움이 됩니다.
            </div>
        </div>
        <h3 class="wp-block-heading has-raft-fg-color has-text-color" style="margin-bottom: 20px;">컨벤셔널 데드리프트 – 2세트 8~10회</h3>
        <img decoding="async" sizes="(max-width: 480px) 150px" 
        src="https://burnfit.io/wp-content/uploads/2023/11/BB_DL.gif" 
        alt="" width="540" height="540" title="" loading="lazy" 
        data-src="https://burnfit.io/wp-content/uploads/2023/11/BB_DL.gif" 
        class=" ls-is-cached lazyloaded" data-eio-rwidth="500" data-eio-rheight="500">
        <div style="text-align: center; margin-bottom: 20px;">
            <div style="margin-bottom: 10px;">
                <strong>1. 양발을 골반보다 약간 넓게 벌리고, 바벨의 그립을 어깨보다 조금 넓게하여 무릎과 팔이 겹치지 않도록 합니다.</strong>
            </div>
            <div style="margin-bottom: 10px;">
                <strong>2. 등이 굽지 않도록 상체를 곧게 유지하면서, 발바닥으로 지면을 밀어올린다는 느낌으로 바벨을 들어 올립니다. (이때, 복압을 단단하게 유지한채로 바벨을 몸에 붙여서 들어올립니다.)</strong>
            </div>
            <div style="margin-bottom: 10px;">
                <strong>3. 몸을 완전히 쭉 피고 엉덩이 근육을 수축합니다.</strong>
            </div>
            <div style="margin-bottom: 10px;">
                <strong>4. 바벨을 들어올린 역순서대로 바닥으로 내려 시작 자세로 돌아갑니다.</strong>
            </div>
        </div>
    </div>
    <h3 class="wp-block-heading has-raft-fg-color has-text-color">바벨 백스쿼트 – 3세트 8~10회</h3>
    <img decoding="async" sizes="(max-width: 480px) 150px" 
    src="https://burnfit.io/wp-content/uploads/2023/11/BB_BSQT.gif"
     alt="" width="540" height="540" title="" loading="lazy" 
     data-src="https://burnfit.io/wp-content/uploads/2023/11/BB_BSQT.gif" 
     class=" lazyloaded" data-eio-rwidth="500" data-eio-rheight="500">
      <div style="text-align: center; margin-bottom: 20px;">
            <div style="margin-bottom: 10px;">
                <strong>1. 다리를 어깨너비만큼 벌리고, 바벨을 등 뒤 어깨 위에 올려줍니다.</strong>
            </div>
            <div style="margin-bottom: 10px;">
                <strong>2. 상체가 앞으로 숙여지지 않도록 코어에 힘을 준 상태로 엉덩이를 뒤로 빼며 앉습니다.</strong>
            </div>
            <div style="margin-bottom: 10px;">
                <strong>3. 상체의 자세를 유지하면서, 발바닥으로 지면을 밀고 일어납니다.</strong>
            </div>
            <div style="margin-bottom: 10px;">
                <strong>이 운동은 어깨 너비로 서서 바벨을 어깨 뒤쪽에 위치시키고 수행합니다. 
                		깊게 앉았다가 일어나는 동작으로, 허벅지와 엉덩이 근육을 강화하는 데 매우 효과적입니다. 
                		올바른 자세 유지가 중요하며, 무릎과 발끝이 같은 방향을 향하도록 하고, 등을 곧게 유지해야 합니다.</strong>
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
		<jsp:include page="/WEB-INF/inc/footer.jsp" ></jsp:include>	
</body>
</html>