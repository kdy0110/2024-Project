<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 게시판</title>
</head>
<body>
    <jsp:include page="/WEB-INF/inc/top.jsp" ></jsp:include>
	<!-- 추가  pb-5 아래 패딩 -->
    <section class="page-section pb-5">
   		 <!-- 추가  pt-5 위에 패딩 -->
        <div class="container pt-5">
           <div class="d-flex justify-content-end">
               <table>    
                   <tr>    
                       <th>날짜 선택</th>
                       <td>
                            <!-- 추가 검색 action -->
                       		<form action="<c:url value="boardView" />" method="post">
                       		 	<!-- 추가  searchVO.stDt, name -->
								<input type="date" id="stDt" name="stDt" value="${searchVO.stDt }" min="2024-01-01" max="2024-12-31" />
								<input type="date" id=" " name="endDt" value="${searchVO.endDt }" min="2024-01-01" max="2024-12-31" />
							    <button type="submit" class="btn btn-dark">조회</button>
							    			<!-- 버튼으로 되어있었는데 submit으로   -->
                       		</form>
                       </td>
                   </tr>   
                </table>
           </div>
           <table class="table table-hover" style="margin-top:50px">
                <thead>
                    <tr><th>번호</th><th>제목</th><th>작성자</th><th>날짜</th></tr>
                </thead>
                <tbody>
					<!--추가 검색결과 없을때 -->
                    <c:if test="${ empty boardList}">
                    	<tr>
                    		<td colspan="4" style="text-align: center"> 내용이 없습니다.</td>
                    	</tr>
                    </c:if>
                    <!--추가 검색결과 있을때 -->
                    <!-- 게시글 출력 -->	
                    <c:if test="${ not empty boardList}">
                      	<c:forEach items="${boardList }" var="board">
	                        <tr>
	                            <td>${board.boardNo}</td>
	                            <td>
	                            <a href="<c:url value="/boardDetailView?boardNo=${board.boardNo}" />">
	                                    ${board.boardTitle}
	                                </a>
	                            </td>
	                            <td>${board.memNm}</td>
	                            <td>${board.boardDate}</td>
	                        </tr>
                    	</c:forEach>
                    </c:if>
                </tbody>
           </table>
           <a href="<c:url value="boardWriteView" />">
                <button type="button" class="btn btn-warning">글쓰기</button>
           </a>   
        </div>
    </section>    
    <script>
          $(document).ready(function(){
              $("#mainSel").on('change', function(){
                    let code = $(this).val();
                    if(code == ''){
                        $("#subSel").empty().append('<option value="">-- 선택하세요 --</option>');
                        return;
                    }
                    $.ajax({
                         url : '<c:url value="/api/getSubCodes" />'
                        ,type : 'GET'
                        ,data : {commParent : code}
                        ,dataType:'json'
                        ,success : function(res){
                            $("#subSel").empty().append('<option value="">-- 선택하세요 --</option>');
                            $.each(res, function(idx, item){
                                $("#subSel").append('<option value="'+item.commCd+'" >'
                                                    + item.commNm + '</option>'  );
                            });
                        },error :function(e){
                            console.log(e);
                        }
                    });
              });
          });
            
    </script>
    
    <jsp:include page="/WEB-INF/inc/footer.jsp" ></jsp:include>
</body>
</html>