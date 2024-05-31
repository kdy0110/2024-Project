<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>채팅</title>
         <style>
			.chat-containerK {
				/* overflow: hidden; */
				width : 100%;
				/* max-width : 200px; */
			}
			.chatcontent {
				height: 700px;
				width : 100%;
				/* width:300px; */
				overflow-y: scroll;
			}
			.chat-fix {
				position: fixed;
				bottom: 0;
				width: 100%;
			}
			#alertK{
				display : none;
			}
			#msgi{	
				resize: none;
			}
			.myChat{
				background-color : #E0B1D0;
			}
			li{
				list-style-type:none;
			}
			.chatBox{
				display : inline-block;
			}
			.chatBox dateK{
				vertical-align: text-bottom;
			} 
			.me{
				text-align : right;
				/* text-align:center; */
			}
			.chat-box{
				max-width : 200px;
				display: inline-block;
				border-radius: 15px;
			}
			.notification{
				text-align : center;
			}
		</style>
    </head>
    <body id="page-top">
    
        <!-- 모든 페이지 상단에 들어가는 부분 -->
    	<jsp:include page="/WEB-INF/inc/top.jsp" ></jsp:include>
        <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container" style="margin-top: 100px;">
                <div id="chat-containerK">
					<div class="chatWrap">
						<div class="main_tit">
							<%-- <h1>방 정보: [ ${room.roomNo} 번방 ${room.roomName} ] </h1> --%>
						</div>
						<div class="content chatcontent border border-secondary" data-room-no="${sessionScope.login.roomNo }" >
							<div id="list-guestbook" class="">
								<c:forEach items="${chatList }" var="chat">
										<!-- 내 채팅일 경우 -->
										<c:if test="${sessionScope.login.memId eq chat.memId }">
											<li data-no="" class="me pr-2">
												<strong class="">${chat.memNm}</strong>
												<div class="me">
													<p class='myChat chat-box text-right p-3'>${chat.chatMsg}</p>
	     											<strong style="display : inline;" 
	     											class="align-self-end">${chat.sendDate }</strong>
												</div>
											</li>
										</c:if>
										<!-- 다른사람의 채팅일 경우 -->
										<c:if test="${sessionScope.login.memId ne chat.memId }">
											<li data-no="" class="pl-2">
												<strong>운동GPT</strong>
												<div>
													<p class='chat-box bg-left p-3'>${chat.chatMsg }</p>
													<strong style="display : inline;" class="align-self-center">${chat.sendDate }</strong>
												</div>
											</li>
										</c:if>
								</c:forEach>
							</div>
						</div>
						<div>
							<div class="d-flex justify-content-center" style="height: 60px">
								<input type="text" id="msgi" name="msg" class="form-control" style="width: 75%; height: 100%">
								<button type="button" id="btnSend" class="send btn btn-primary" style="width: 25%; height: 100%">보내기</button>
<!-- 								<button type="button" id="btnOut" class="btn btn-secondary " style="width: 25%; height: 100%">홈</button> -->
							</div>
						</div>
					</div>
				</div>
            </div>
        </section>
		
        <!-- 모든 페이지 하단에 들어가는 부분 -->
        <!-- Footer-->
		<jsp:include page="/WEB-INF/inc/footer.jsp" ></jsp:include>
		<!-- sockjs.min.js -->
		<script src="<c:url value='/js/sockjs.min.js' />"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>	
		<script>
		let msgContent;
		var roomNo = "${sessionScope.login.roomNo }";
	    // 메시지 입력란에서 키를 누를 때 이벤트 처리
	    document.getElementById('msgi').addEventListener('keypress', function(event) {
	        if (event.key === 'Enter') { // 눌린 키가 엔터일 때
	        	msgContent = $("#msgi").val();
	            sendMessage(); // sendMessage 함수 호출
	            console.log(msgContent);
	            insertChatMsg(roomNo, msgContent, "${sessionScope.login.memId}");
	            fetchChatResponse(msgContent);
	        }
	        
	    });
	    // 메세지 전송버튼 클릭
	    $("#btnSend").click(function(){
	    	msgContent = $("#msgi").val();
	    	console.log(msgContent);
	    	sendMessage();
	    	insertChatMsg(roomNo, msgContent, "${sessionScope.login.memId}");
	    	fetchChatResponse(msgContent);
	    	
	    });
	
	    // 보내기 버튼 클릭 이벤트 처리
	    
	    //gpt 응답 메세지 화면출력
		function gptMessage(msg){
			 var chatContent = document.querySelector('.chatcontent'); // 채팅창 컨테이너
	            var chatList = document.getElementById('list-guestbook'); // 채팅 메시지 리스트
			
	            // 채팅 메시지를 생성하여 추가  채팅 컨테이너 오른쪽 왼쪽
	            var chatMessage = document.createElement('li');
	            chatMessage.className = '<li data-no="" class="pl-2">';
	            chatMessage.innerHTML = '<strong class="">GPT</strong>' +
	                                    '<div>' +
	                                    '<p class="chat-box bg-left p-3">' + msg + '</p>' +
	                                    '<strong style="display: inline;" class="align-self-center">Just Now</strong>' +
	                                    '</div>';
	                                    '</li>';
	            chatList.appendChild(chatMessage);
	            chatContent.scrollTop = chatContent.scrollHeight;

		}
	    // 유저 메시지를 보내는 함수
	    function sendMessage() {
	        var messageInput = document.getElementById('msgi').value.trim(); // 입력된 메시지 가져오기
	
	        if (messageInput !== '') { // 입력된 메시지가 비어있지 않은 경우에만 실행
	            var chatContent = document.querySelector('.chatcontent'); // 채팅창 컨테이너
	            var chatList = document.getElementById('list-guestbook'); // 채팅 메시지 리스트
	
	            // 채팅 메시지를 생성하여 추가    채팅 컨테이너 오른쪽 왼쪽
	            var chatMessage = document.createElement('li');
	            chatMessage.className = 'me pr-2';
	            chatMessage.innerHTML = '<strong class="">김대영</strong>' +
	                                    '<div class="me">' +
	                                    '<p class="myChat chat-box text-rigth p-3">' + messageInput + '</p>' +
	                                    '<strong style="display: inline;" class="align-self-end">Just Now</strong>' +
	                                    '</div>';
	            chatList.appendChild(chatMessage);
	
	            // 채팅창 스크롤을 아래로 이동
	            chatContent.scrollTop = chatContent.scrollHeight;
	
	            // 메시지 입력란 비우기
	            document.getElementById('msgi').value = '';
	        }
	        // 메세지 전달
	    }
	    
        function insertChatMsg(roomNo, message, memId) {
            var chatData = {
                "memId" : memId,
                "roomNo" : roomNo,
                "chatContent" : message
            };

            $.ajax({
                url : '/my/sendMessage',
                type : 'POST',
                contentType : 'application/json',
                dataType : 'json',
                data : JSON.stringify(chatData),
                success : function(response) {
                    // 성공적으로 메시지를 전송한 경우 실행할 코드 추가
                    console.log('메시지 전송 성공');
                },
                error : function(xhr, status, error) {
                    // 메시지 전송 실패 시 실행할 코드 추가
                    console.error('메시지 전송 실패:', error);
                }
            });
            
            
            // GPT 응답을 서버로 전송하는 함수
            function sendGPTResponse(message) {

                // 서버로 GPT 응답 전송
                insertChatMsg(roomNo, message, 'gpt'); // 이 부분은 사용자가 아닌 GPT임을 나타내는 'gpt'로 수정되어야 합니다.
            }

        }
        
        function fetchChatResponse(message) {
            const api_key = "" // API KEY
             fetch('https://api.openai.com/v1/chat/completions', {
                 method: 'POST',
                 headers: {
                     'Content-Type': 'application/json',
                     'Authorization': 'Bearer ' + api_key // ChatGPT API Key
                 },
                 body: JSON.stringify({
                     model: 'gpt-3.5-turbo',
                     messages: [{
                         role: 'user',
                         content: message
                     }]
                 })
             })
             .then(response => response.json())
             .then(data => {
                 console.log("gdgd");
                 const chatResponse = data.choices[0].message.content;
                 console.log(chatResponse);
                 insertChatMsg(roomNo, chatResponse, 'gpt');
                 gptMessage(chatResponse);
             })
             .catch(error => console.error('Error fetching chat response:', error));
         }
        $(document).ready(function(){
        	fn_scroll(); // 최초 스크롤 아래로 
        });
        function fn_scroll(){
        	  var chatContent = document.querySelector('.chatcontent'); // 채팅창 컨테이너
//         	// 채팅창 스크롤을 아래로 이동
	          chatContent.scrollTop = chatContent.scrollHeight;
        }
</script>
    </body>
</html>


