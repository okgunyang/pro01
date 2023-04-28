<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입 페이지</title>
    <!-- 문서 정보 등록 -->
    <!-- 검색엔진최적화(Search Engine Optimization) : SEO -->
    <meta name="subject" content="CJ프레시웨이 벤치마킹 사이트">
    <meta name="keywords" content="CJ프레시웨이, 식품, 식단, 주문제작">
    <meta name="description" content="CJ프레시웨이는 좋은 식자재를 유통하며, 건강하고 맛있는 식문화를 창출하는 대한민국 최고의 글로벌 식자재 유통 및 푸드서비스 전문 기업입니다.
    ">
    <meta name="author" content="mr. kim">

    <!-- 파비콘(favicon) 설정 -->
    <link rel="shortcut icon" href="<%=path %>/images/favicon.ico">

    <!-- https://okgunyang.github.io/web1 -->
    <!-- 오픈그래프 설정 -->
    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - CJ프레시웨이">
    <meta name="og:description" content="CJ프레시웨이는 좋은 식자재를 유통하며, 건강하고 맛있는 식문화를 창출하는 대한민국 최고의 글로벌 식자재 유통 및 푸드서비스 전문 기업입니다."> 
          
    <!-- 기본 폰트 및 초기화 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 스타일 초기화 -->
    <!-- reset.css나 normalize.css를 CDN 또는 다운로드 받아 link로 연결 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/main.css">
    <style>
   .vs { height:40vh; }
    .content { background-image: url("./images/top_career.jpg"); }
    #page1 .page_tit { padding-top: 60px; }
    .table { width:900px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
    th {  text-align: justify;  line-height: 0; width:180px; padding-top:10px; padding-bottom: 10px;}
    td { padding-top:10px; padding-bottom: 10px; }
    th:after {  content: "";  display: inline-block;  width: 100%; }
    th:before {  content: "";  display: inline-block;  width: 100%; }
    .lb { display:block;  font-size:20px; }
    .indata { display:inline-block; width:300px; height:24px; line-height:24px; padding:10px; }
    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px;
         text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: -moz-linear-gradient(top, #00b7ea 0%, #009ec3 100%); 
        background: -webkit-linear-gradient(top, #00b7ea 0%,#009ec3 100%); 
        background: linear-gradient(to bottom, #00b7ea 0%,#009ec3 100%); color:#fff; }
    .btn-cancle { background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #6d0019 100%); 
        background: -webkit-linear-gradient(top, #a90329 0%,#8f0222 44%,#6d0019 100%); 
        background: linear-gradient(to bottom, #a90329 0%,#8f0222 44%,#6d0019 100%);
        color:#fff;
    }
    .page_tit { text-align:center; font-size:32px; }
   
    </style>
</head>
<body>
    <div class="container">
		<%@ include file="./admin_header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">JOIN</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">회원가입</h2>
                <div class="page_wrap">
                    <form name="join_form" id="join_form" action="joinpro.jsp" method="post" onsubmit="return form_check(this)">
						<table class="table">
							<tbody>
								<tr>
									<th><label for="id" class="lb">아이디</label></th>
									<td>
										<input type="text" name="id" id="id" class="indata" pattern="^[a-z0-9]{3,18}$" required autofocus>
										<input type="hidden" name="id_ck" id="id_ck" value="no">
										<input type="button" value="아이디 중복 확인" onclick="idCheck()" class="btn btn-primary">
										<div id="msg"></div>
									</td>
								</tr>
								<tr>
									<th><label for="pw" class="lb">비밀번호</label></th>
									<td><input type="password" name="pw" id="pw" class="indata" pattern="^[A-Za-z\d$!%*#?&]{4,8}$" required></td>
								</tr>
								<tr>
									<th><label for="pw2" class="lb">비밀번호 확인</label></th>
									<td><input type="password" name="pw2" id="pw2" class="indata" pattern="^[A-Za-z\d$!%*#?&]{4,8}$" required></td>
								</tr>
								<tr>
									<th><label for="name" class="lb">이름</label></th>
									<td><input type="text" name="name" id="name" pattern="^[가-힣A-Za-z]{2,12}$" class="indata" required></td>
								</tr>
								<tr>
									<th><label for="tel" class="lb">전화번호</label></th><!-- pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"  -->
									<td><input type="tel" name="tel" id="tel" maxlength="13" class="indata"></td>
								</tr>
								<tr>
									<th><label for="email" class="lb">이메일</label></th><!-- pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{5,90}$"  -->
									<td><input type="email" name="email" id="email" class="indata"></td>
								</tr>
								<tr>
									<th><label for="email" class="lb">주소</label></th><!-- maxlength="190"  -->
									<td><input type="text" name="addr" id="addr" class="indata"></td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" value="회원가입" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
										<input type="reset" value="취소" class="btn btn-cancle" onclick="init()">
									</td>
								</tr>
							</tbody>
						</table>
                    </form>
                    <script>
                    function idCheck(){
                    	var id = document.getElementById("id");
                    	if(id.value!=""){
                    		window.open("idCheck.jsp?id="+id.value,"아이디 중복 검사","width=400, height=300");
                    	} else {
                    		alert("아이디를 입력해주세요");
                    		id.focus();
                    		return;
                    	}
                    }
                    function form_check(f){
                    	if(f.pw.value!=f.pw2.value){
                    		alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                    		return false;
                    	}
                    	if(f.id_ck.value!="yes"){
                    		alert("아이디 중복체크를 완료하지 못했습니다.");
                    		return false;
                    	}
                    }
                    function init(){//전체 폼 초기화
                    	var form = document.getElementById("join_form");
                    	var id = document.getElementById("id");
                    	id.removeAttribute("readonly");
                    	form.reset();
                    }
                    </script>
                </div>
            </section>
        </div>
        <%@ include file="../footer.jsp" %>
    </div>
</body>
</html>