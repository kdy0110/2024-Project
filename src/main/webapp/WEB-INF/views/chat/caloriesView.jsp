<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    <div class="column scroll">
          <tm-classifier-list id="classifier-list" class="panel">
          <tm-classifier-drawer label="Class 1" minsamples="1" tipdescription="">
        
            <tm-webcam-sample-input autoplay="" showrecord=""></tm-webcam-sample-input>
            <tm-file-sample-input accept="application/zip, image/jpg, image/png, image/jpeg, image/bmp" multiple="" label="클릭하여 .png 또는 .jpg를 선택하거나 드래그하여 업로드하세요.">
                    <div class="info-message">
                        
        <svg role="img" width="167" height="39" viewBox="0 0 167 39" fill="none" xmlns="http://www.w3.org/2000/svg" aria-labelledby="title-8Yza6EtHd26XHf6BNmFxXi desc-8Yza6EtHd26XHf6BNmFxXi">
            <title id="title-8Yza6EtHd26XHf6BNmFxXi">Your images will be cropped to center</title>
            <desc style="display: none" id="desc-8Yza6EtHd26XHf6BNmFxXi">An Icon representing that all of your images will scaled and cropped in center</desc>
            <path d="M86 13L84.59 14.41L88.17 18H76V20H88.17L84.59 23.59L86 25L92 19L86 13Z" fill="#185ABC"></path>
            <rect y="2" width="62" height="35" rx="1" fill="#AECBFA"></rect>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M62 14.7694V35C62 36.1046 61.1046 37 60 37H39.7694C38.0217 34.4358 37 31.3372 37 28C37 19.1634 44.1634 12 53 12C56.3372 12 59.4358 13.0217 62 14.7694Z" fill="#4285F4"></path>
            <rect x="11" y="2" width="33" height="24" fill="#8AB4F8"></rect>
            <path d="M15.0001 14L28 37H2L15.0001 14Z" fill="#669DF6"></path>
            <g opacity="0.4">
            <rect x="105" y="2" width="62" height="35" rx="1" fill="#AECBFA"></rect>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M167 14.7694V35C167 36.1046 166.105 37 165 37H144.769C143.022 34.4358 142 31.3372 142 28C142 19.1634 149.163 12 158 12C161.337 12 164.436 13.0217 167 14.7694Z" fill="#4285F4"></path>
            <rect x="116" y="2" width="33" height="24" fill="#8AB4F8"></rect>
            <path d="M120 14L133 37H107L120 14Z" fill="#669DF6"></path>
            </g>
            <mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="118" y="2" width="35" height="35">
            <rect x="118" y="2" width="35" height="35" fill="#1967D2"></rect>
            </mask>
            <g mask="url(#mask0)">
            <rect x="105" y="2" width="62" height="35" rx="1" fill="#AECBFA"></rect>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M167 14.7694V35C167 36.1046 166.105 37 165 37H144.769C143.022 34.4358 142 31.3372 142 28C142 19.1634 149.163 12 158 12C161.337 12 164.436 13.0217 167 14.7694Z" fill="#4285F4"></path>
            <rect x="116" y="2" width="33" height="24" fill="#8AB4F8"></rect>
            <path d="M120 14L133 37H107L120 14Z" fill="#669DF6"></path>
            </g>
            <rect x="117" y="1" width="37" height="37" stroke="#1967D2" stroke-width="2"></rect>
        </svg>
                        <p style="color:#669DF6; margin: 10px 0 0 0; font-size: 14px;"><!---->이미지가 정사각형 모양으로 잘립니다.<!----></p>
                    </div>
            </tm-file-sample-input>
            <tm-drive-sample-input></tm-drive-sample-input>
        
      </tm-classifier-drawer><tm-classifier-drawer label="Class 2" minsamples="1" tipdescription="">
        
            <tm-webcam-sample-input autoplay="" showrecord=""></tm-webcam-sample-input>
            <tm-file-sample-input accept="application/zip, image/jpg, image/png, image/jpeg, image/bmp" multiple="" label="클릭하여 .png 또는 .jpg를 선택하거나 드래그하여 업로드하세요.">
                    <div class="info-message">
                        
        <svg role="img" width="167" height="39" viewBox="0 0 167 39" fill="none" xmlns="http://www.w3.org/2000/svg" aria-labelledby="title-qDWG9P36DBKzwegWxUVSiV desc-qDWG9P36DBKzwegWxUVSiV">
            <title id="title-qDWG9P36DBKzwegWxUVSiV">Your images will be cropped to center</title>
            <desc style="display: none" id="desc-qDWG9P36DBKzwegWxUVSiV">An Icon representing that all of your images will scaled and cropped in center</desc>
            <path d="M86 13L84.59 14.41L88.17 18H76V20H88.17L84.59 23.59L86 25L92 19L86 13Z" fill="#185ABC"></path>
            <rect y="2" width="62" height="35" rx="1" fill="#AECBFA"></rect>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M62 14.7694V35C62 36.1046 61.1046 37 60 37H39.7694C38.0217 34.4358 37 31.3372 37 28C37 19.1634 44.1634 12 53 12C56.3372 12 59.4358 13.0217 62 14.7694Z" fill="#4285F4"></path>
            <rect x="11" y="2" width="33" height="24" fill="#8AB4F8"></rect>
            <path d="M15.0001 14L28 37H2L15.0001 14Z" fill="#669DF6"></path>
            <g opacity="0.4">
            <rect x="105" y="2" width="62" height="35" rx="1" fill="#AECBFA"></rect>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M167 14.7694V35C167 36.1046 166.105 37 165 37H144.769C143.022 34.4358 142 31.3372 142 28C142 19.1634 149.163 12 158 12C161.337 12 164.436 13.0217 167 14.7694Z" fill="#4285F4"></path>
            <rect x="116" y="2" width="33" height="24" fill="#8AB4F8"></rect>
            <path d="M120 14L133 37H107L120 14Z" fill="#669DF6"></path>
            </g>
            <mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="118" y="2" width="35" height="35">
            <rect x="118" y="2" width="35" height="35" fill="#1967D2"></rect>
            </mask>
            <g mask="url(#mask0)">
            <rect x="105" y="2" width="62" height="35" rx="1" fill="#AECBFA"></rect>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M167 14.7694V35C167 36.1046 166.105 37 165 37H144.769C143.022 34.4358 142 31.3372 142 28C142 19.1634 149.163 12 158 12C161.337 12 164.436 13.0217 167 14.7694Z" fill="#4285F4"></path>
            <rect x="116" y="2" width="33" height="24" fill="#8AB4F8"></rect>
            <path d="M120 14L133 37H107L120 14Z" fill="#669DF6"></path>
            </g>
            <rect x="117" y="1" width="37" height="37" stroke="#1967D2" stroke-width="2"></rect>
        </svg>
                        <p style="color:#669DF6; margin: 10px 0 0 0; font-size: 14px;"><!---->이미지가 정사각형 모양으로 잘립니다.<!----></p>
                    </div>
            </tm-file-sample-input>
            <tm-drive-sample-input></tm-drive-sample-input>
        
      </tm-classifier-drawer></tm-classifier-list>
        </div>
	</head>	

</html>


