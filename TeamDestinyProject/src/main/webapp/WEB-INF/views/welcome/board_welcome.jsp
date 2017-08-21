<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- W3.CSS Templates -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- BootStrap CSS -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript"
   src="/js/search/search-auto-complete.js?v=20170814"></script>
<title>Board</title>

<style>
html, body{
background-image : url("http://erotic-chaos.com/wp-content/uploads/2017/08/bg_001.jpg");
margin:0;
padding:0;
height:100%;
}

.w3-sidebar a {
   font-family: "Roboto", sans-serif
}

body, h1, h2, h3, h4, h5, h6, .w3-wide {
   font-family: "Montserrat", sans-serif;
}

caption {
   font-family: "Montserrat", sans-serif;
   font-size: 20px;
   font-style: oblique;
}

nav {
   float: left;
}

button.accordion {
   background-color: #eee;
   color: #444;
   cursor: pointer;
   padding: 18px;
   width: 100%;
   border: none;
   text-align: left;
   outline: none;
   font-size: 15px;
   transition: 0.4s;
}

button.accordion.active, button.accordion:hover {
   background-color: #ddd;
}

button.accordion:after {
   content: '\002B';
   color: #777;
   font-weight: bold;
   float: right;
   margin-left: 5px;
}

button.accordion.active:after {
   content: "\2212";
}

div.panel {
   padding: 0 18px;
   background-color: white;
   max-height: 0;
   overflow: hidden;
   transition: max-height 0.2s ease-out;
}

html{
margin:0;
padding:0;
height:100%;
}

.faq {
position: relative;
margin: 0;
overflow-y: scroll;
}

footer{
    position:relative;
    margin-bottom: 0px;
    width:100%;
}



@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.nt100 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 100;
}
.nt300 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 300;
}
<!-- 레귤러 폰트 -->
.nt400 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 400;
}
.nt500 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 500;
}
.nt700 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 700;
}
.nt900 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 900;
}
</style>
<script>
   
</script>
<body class="faq">
   <jsp:include page="/WEB-INF/views/include/header_welcome.jsp"></jsp:include>
   <jsp:include page="/WEB-INF/views/include/sidebar.jsp"></jsp:include>
   <!-- Sidebar/menu -->
   <!-- w3-sidebar  -->

   <!-- Top menu on small screens -->
   <!-- <header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
      <div class="w3-bar-item w3-padding-24 w3-wide">LOGO</div>
      <a href="javascript:void(0)"
         class="w3-bar-item w3-button w3-padding-24 w3-right"
         onclick="w3_open()"><i class="fa fa-bars"></i></a>
   </header> -->

   <div class="container" style="font-family:'Noto Sans KR', sans-serif; color: #1e1e1e; background-color: rgba( 0, 0, 0, 0.7 ); min-height: 769px;">
   <div class="col-sm-12">

      <!-- Overlay effect when opening sidebar on small screens -->
      <div class="w3-overlay w3-hide-large" onclick="w3_close()"
         style="cursor: pointer" title="close side menu" id="myOverlay"></div>

         <!-- Push down content on small screens -->
         <div class="w3-hide-large" style="margin-top: 83px"></div>
          
        <div>
         <div class="headheadhead" style="font-family:'Noto Sans KR', sans-serif; color: #ebebeb;">
             <h2 class="w3-border-bottom w3-border-light-grey w3-padding-16">FAQ</h2>
          </div>
       </div>

         <button class="accordion">분석 파일 관리</button>
         <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
               do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
               enim ad minim veniam, quis nostrud exercitation ullamco laboris
               nisi ut aliquip ex ea commodo consequat.</p>
         </div>

         <button class="accordion">데이터 선택</button>
         <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
               do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
               enim ad minim veniam, quis nostrud exercitation ullamco laboris
               nisi ut aliquip ex ea commodo consequat.</p>
         </div>

         <button class="accordion">데이터 전처리</button>
         <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
               do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
               enim ad minim veniam, quis nostrud exercitation ullamco laboris
               nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">데이터 재구조화</button>
         <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
               do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
               enim ad minim veniam, quis nostrud exercitation ullamco laboris
               nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         <button class="accordion">데이터 시각화 및 탐색</button>
         <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
               do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
               enim ad minim veniam, quis nostrud exercitation ullamco laboris
               nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         <button class="accordion">머신러닝</button>
         <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
               do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
               enim ad minim veniam, quis nostrud exercitation ullamco laboris
               nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         <button class="accordion">검정통계량</button>
         <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
               do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
               enim ad minim veniam, quis nostrud exercitation ullamco laboris
               nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         <script>
            var acc = document.getElementsByClassName("accordion");
            var i;

            for (i = 0; i < acc.length; i++) {
               acc[i].onclick = function() {
                  this.classList.toggle("active");
                  var panel = this.nextElementSibling;
                  if (panel.style.maxHeight) {
                     panel.style.maxHeight = null;
                  } else {
                     panel.style.maxHeight = panel.scrollHeight + "px";
                  }
               }
            }
         </script>
   </div>
   </div>  <!-- End Container -->

 
</body>
<footer>
 <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</footer> 
</html>