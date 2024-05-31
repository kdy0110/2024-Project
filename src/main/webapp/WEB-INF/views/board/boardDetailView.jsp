<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>게시글</title>
    </head>
    
    <body id="page-top">
        <!-- 모든 페이지 상단에 들어가는 부분 -->
    	<%@include file="/WEB-INF/inc/top.jsp"%>
        <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container" style="margin-top: 100px;">
                <!-- Contact Section Form-->
                <div class="row justify-content-center" style="margin-bottom: 50px;">
                    <div class="col-lg-8 col-xl-7">
                        <!-- title input-->
                        <div class="mb-3">
                            <label for="title">제목</label>
                            <h6 id="title">${board.boardTitle}</h6>
                        </div>
                        <div class="mb-3">
                            <label for="name">작성자</label>
                            <h6 id="name">${board.memNm}</h6>
                        </div>
                        <div class="mb-3">
                            <label for="">작성일</label>
                            <h6 id="">${board.boardDate}</h6>
                        </div>
                        <!-- content input-->
                        <div class="mb-3">
                        	<textarea readonly class="form-control bg-white" style="height: 20rem">${board.boardContent}</textarea>
                        </div>
                        <c:if test="${sessionScope.login.memId == board.memId }">
                        
                        	<div class="col-lg-8 col-xl-7 d-flex justify-content-end">
                        	 <form action="<c:url value="/boardEditView" />" method="post">
                        	    <input type="hidden"  name="boardNo" value="${board.boardNo}"> 
                        		<button type="submit" class="btn btn-warning me-2">
                        			수정
                        		</button>
							 </form> 
							  <form action="<c:url value="/boardDel" />" method="post" id="delForm">  
							    <input type="hidden"  name="boardNo" value="${board.boardNo}">                      		
                        		<button type="button" class="btn btn-danger me-2" onclick="fn_check()">
                        			삭제
                        		</button>
                        	  </form>
                        	</div>
                        </c:if>
                    </div>
                </div>  
               <%--  <form id="replyForm" action="" method="post">
                	<div class="row justify-content-center">
                		<div class="row col-lg-8 col-xl-7">
                			<div class="col-lg-9">
                				<input class="form-control" type="text" id="replyInput" name="replyContent">
                				<input type="hidden" name="memId" value="">
                			</div>
                			<div class="col-lg-3">
                			    <button type="button" class="btn btn-info me-2"
                			     onclick="fn_reply('${sessionScope.login.memId}', '${board.boardNo}' )" >등록 </button>
                			</div>
                		</div>
                	</div>
                </form>   --%>   
                 <div class="row justify-content-center">
                 	<div class="col-lg-8 col-xl-7 pt-5">
                 		<table class="table">
							<tbody id="replyBody">
								<c:forEach items="${replyList }" var="reply">
									<tr id="${reply.replyNo }">
										<td>${reply.replyContent }</td>
										<td>${reply.memNm }</td>
										<td>${reply.replyDate }</td>
									</tr>
								</c:forEach>
							</tbody>
                 		</table>
                 	</div>
                 </div>
            </div>
        </section>
        <!-- 모든 페이지 하단에 들어가는 부분 -->
        <!-- Footer-->
		<%@include file="/WEB-INF/inc/footer.jsp"%>
		<script>
		
		  	function fn_check(){
		  		if(confirm("정말 삭제 하시겠습니까?")){
		  			document.getElementById("delForm").submit();
		  		}
		  	}
		  	
		
		  
		</script>
		
		
		
    </body>
</html>


