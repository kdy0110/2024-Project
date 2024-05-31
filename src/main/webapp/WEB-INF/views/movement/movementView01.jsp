<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@latest/dist/tf.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@latest/dist/teachablemachine-image.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            padding: 20px;
        }

        #webcam-container {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #label-container {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px;
            font-weight: bold;
        }

        #my_image {
            display: block;
            margin: 0 auto;
            border: 2px solid #ccc;
            border-radius: 5px;
            max-width: 100%;
            height: auto;
            padding: 10px;
            background-color: white;
        }

        input[type="file"] {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div>
        <input type="file" onchange="preivewFile()"><br>
        <img src="" id="my_image" height="200px" alt="">
    </div>
    <div id="webcam-container"></div>
    <div id="label-container"></div>
    <script type="text/javascript">
        const URL = "<c:url value='/model/' />";
        let model, webcam, labelContainer, maxPredictions;
        
        async function init() {
            const modelURL = URL + "model.json";
            const metadataURL = URL + "metadata.json";
            model = await tmImage.load(modelURL, metadataURL);
            maxPredictions = model.getTotalClasses(); // 분류 class 수 (ex 고래 3개 종류 )
            labelContainer = document.getElementById("label-container");
            for(let i =0 ; i < maxPredictions ; i ++){
                labelContainer.appendChild(document.createElement("div")); // 3개 div생성
            }
        }
        async function predict() {
              let image = document.getElementById("my_image");
              let prediction = await model.predict(image);// 예측
              
              // Find the index of the class with the highest probability
              let maxProbabilityIndex = 0;
              let maxProbability = prediction[0].probability;

              for(let i = 1; i < maxPredictions; i++) {
                  if (prediction[i].probability > maxProbability) {
                      maxProbability = prediction[i].probability;
                      maxProbabilityIndex = i;
                  }
              }

              // Display only the class with the highest probability
              labelContainer.innerHTML = prediction[maxProbabilityIndex].className;
              // 칼로리 넣기
              let foodNm = prediction[maxProbabilityIndex].className;
              $.ajax({
                  url : '<c:url value="/move" />',
                  type : 'POST',
                  dataType : 'json',
                  data : {food:foodNm},
                  success : function(response) {
                      // 성공적으로 메시지를 전송한 경우 실행할 코드 추가
                      console.log(response)
                      console.log('메시지 전송 성공');
                      labelContainer.innerHTML += ': '+ response.calPer + ' 칼로리';
                  },
                  error : function(xhr, status, error) {
                      // 메시지 전송 실패 시 실행할 코드 추가
                      console.error('메시지 전송 실패:', error);
                  }
              });
              
              
        }
        $(document).ready(function (){
            init();
            // image onload 뒤에 예측함수 호출
            $("#my_image").on("load", function (){
                predict();
            });
        });
        function preivewFile(){
            let file = document.querySelector("input[type=file]").files[0];
            let reader = new FileReader();
            reader.onload = function (){
                let img = document.getElementById("my_image");
                img.src = reader.result;
            }
            reader.readAsDataURL(file);
        }
    </script>
</body>
</html>