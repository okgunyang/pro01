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
    <title>CJ프레시웨이</title>
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
    <mata name="og:url" content="https://okgunyang.github.io/web1">
    <mata name="og:image" content="<%=path %>/images/thumbnail.jpg">  
          
    <!-- 기본 폰트 및 초기화 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 스타일 초기화 -->
    <!-- reset.css나 normalize.css를 CDN 또는 다운로드 받아 link로 연결 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/main.css">
    <style>
    /* 내부 스타일 */
    </style>
</head>
<body>
    <div class="container">
		<%@ include file="./header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <video src="<%=path %>/movie/main.mp4" muted autoplay loop></video>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_title" style="display:none;">SOLUTION</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">BUSINESS</h3>
                        <h2 class="main_title">SOLUTION</h2>
                    </div>
                    <article class="pg1_btn_box">
                        <input type="radio" name="pg_ra" id="pg1_ra1" class="pg1_ra" checked>
                        <label for="pg1_ra1" class="item1">CJ프레시웨이</label>
                        <input type="radio" name="pg_ra" id="pg1_ra2" class="pg1_ra">
                        <label for="pg1_ra2" class="item2">식자재 유통 솔루션</label>
                        <input type="radio" name="pg_ra" id="pg1_ra3" class="pg1_ra">
                        <label for="pg1_ra3" class="item3">푸드 서비스 솔루션</label>
                        <input type="radio" name="pg_ra" id="pg1_ra4" class="pg1_ra">
                        <label for="pg1_ra4" class="item4">상품 구매</label>
                        <input type="radio" name="pg_ra" id="pg1_ra5" class="pg1_ra">
                        <label for="pg1_ra5" class="item5">식품 안전</label>
                        <input type="radio" name="pg_ra" id="pg1_ra6" class="pg1_ra">
                        <label for="pg1_ra6" class="item6">물류 시스템</label>
                        <div class="ban_fr">
                            <ul class="ban_box">
                                <li class="item1">
                                    <img src="<%=path %>/images/main_solution_01.jpg" alt="CJ프레이시웨이" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">01</h2>
                                        <h2 class="ban_tit2">CJ프레시웨이</h2>
                                        <p class="ban_com">Food Business Partner<br>
                                            Creating the Success Way
                                        </p>
                                    </div>
                                </li>
                                <li class="item2">
                                    <img src="<%=path %>/images/main_solution_02.jpg" alt="식자재 유통 솔루션" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">02</h2>
                                        <h2 class="ban_tit2">식자재 유통 솔루션</h2>
                                        <p class="ban_com">고객 맞춤 최적의 식자재 유통 솔루션</p>
                                    </div>
                                </li>
                                <li class="item3">
                                    <img src="<%=path %>/images/main_solution_03.jpg" alt="푸드 서비스 솔루션" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">03</h2>
                                        <h2 class="ban_tit2">푸드 서비스 솔루션</h2>
                                        <p class="ban_com">다양한 경로 맞춤 전문적인 푸드 서비스 솔루션</p>
                                    </div>
                                </li>
                                <li class="item4">
                                    <img src="<%=path %>/images/main_solution_04.jpg" alt="상품 구매" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">04</h2>
                                        <h2 class="ban_tit2">상품 구매</h2>
                                        <p class="ban_com">높은 품질 기준으로 차별화된 상품 경쟁력</p>
                                    </div>
                                </li>
                                <li class="item5">
                                    <img src="<%=path %>/images/main_solution_05.jpg" alt="식품 안전" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">05</h2>
                                        <h2 class="ban_tit2">식품 안전</h2>
                                        <p class="ban_com">업계 최고 수준의 식품 안전 솔루션</p>
                                    </div>
                                </li>
                                <li class="item6">
                                    <img src="<%=path %>/images/main_solution_06.jpg" alt="물류 시스템" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">06</h2>
                                        <h2 class="ban_tit2">물류 시스템</h2>
                                        <p class="ban_com">품질과 안전을 지키는 선진 물류 솔루션</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_title" style="display:none">ESG</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">ESG</h3>
                        <h2 class="main_title">SUSTAINABILITY</h2>
                    </div>
                    <article class="grid_fr">
                        <ul class="grid_box">
                            <li>
                                <a href="" class="item1">
                                    <h3 class="grid_tit">ESG 전략</h3>
                                    <p class="grid_com">건강한 식문화와 지속가능한 유통</p>
                                </a>
                                <a href="" class="item2">
                                    <h3 class="grid_tit">주요 활동 및 성과</h3>
                                    <p class="grid_com">ESG 전략에 따른 다양한 활동</p>
                                </a>
                            </li>
                            <li>
                                <a href="" class="item3">
                                    <h3 class="grid_tit">사회공헌</h3>
                                    <p class="grid_com">지역 사회의 가치 창출을 위한 활동</p>
                                </a>
                            </li>
                            <li>
                                <a href="" class="item4">
                                    <h3 class="grid_tit">윤리경영</h3>
                                    <p class="grid_com">우리 사회의 가치를 높이는 경영</p>
                                </a>
                                <a href="" class="item5">
                                    <h3 class="grid_tit">보고서 및 정책</h3>
                                    <p class="grid_com">지속가능경영의 발자취</p>
                                </a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_title" style="display:none">IR</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">IR</h3>
                        <h2 class="main_title" style="color:#fff">INVESTOR RELATIONS</h2>
                    </div>
                    <article class="col_fr">
                        <ul class="col_box">
                            <li class="left">
                                <p class="one_line"><span class="dot">CJ프레시웨이</span> <span class="gtxt">051500</span></p>
                                <div class="inv_p">
                                    <p class="large_txt">29,300</p>
                                    <p class="small_txt">
                                        <span class="ltxt">2023/04/18 14:59:25</span><br>
                                        <span class="btxt">─ 0 &nbsp; &nbsp; 0.00%</span>
                                    </p>
                                </div>
                                <dl class="col_dl">
                                    <dd>
                                        <h4 class="d_tit">시가</h4>
                                        <p class="d_com">29,300원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">고가</h4>
                                        <p class="d_com">29,450원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">저가</h4>
                                        <p class="d_com">29,100원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">전일가격</h4>
                                        <p class="d_com">29,300원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">거래량</h4>
                                        <p class="d_com">21,577주</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">거래대금</h4>
                                        <p class="d_com">631,137,050원</p>
                                    </dd>
                                </dl>
                            </li>
                            <li class="right">
                                <a href="" class="item1"><span>재무제표</span></a>
                                <a href="" class="item2"><span>공시현황</span></a>
                                <a href="" class="item3"><span>IR자료실</span></a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_title" style="display:none">PRESS</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">PRESS</h3>
                        <h2 class="main_title">NOW IS</h2>
                    </div>
                    <a href="" class="more">+</a>
                    <article class="board_fr">
                        <table class="tb1">
                            <tbody>
                                <tr>
                                    <td class="td1">5</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 외식기업 대상 맞춤형 메뉴 컨설팅 호응</h3>
                                            <p class="td_com">전문 셰프가 만든 우리 매장 신메뉴 CJ프레시웨이, 외식기업 대상 맞춤형 메뉴 컨설팅 ‘호응’ 외식기업 대상 전문 셰프 노하우 담은 메뉴 개발 지원 주점 프랜차이즈 ‘탄광맥주’에</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">4</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 병원급식 고객 서비스 질 높인다… 임상영양 전문가 육성</h3>
                                            <p class="td_com">CJ프레시웨이, 병원급식 고객 서비스 질 높인다... 임상영양 전문가 육성   병원 단체급식 운영그룹 '임상영양 마스터 과정' 수료식 진행 사내 영양사 30명 대상 병원 임상영양</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 봄 성수기 맞아 컨세션 서비스 개편…</h3>
                                            <p class="td_com">CJ프레시웨이, 봄 성수기 맞아 컨세션 서비스 개편… “야구장 ‘직관 맥주’ 경험해 보세요”   광주-기아 챔피언스 필드 특별관람석 ‘비스트로 펍’ 개편, 야구장 맛집으로 인기 워</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">2</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 홈페이지 리뉴얼… 고객 소통, ESG 경영 강화</h3>
                                            <p class="td_com">CJ프레시웨이, 홈페이지 리뉴얼… "고객 소통, ESG 경영 강화"     뉴스룸, 고객 상담 서비스 및 지속가능경영 콘텐츠 신설 '지디웹 디자인 어워즈' 우수작 선정… "고객 맞</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">1</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 푸드 펀딩으로 착한 연어 선봬… 와디즈에 ASC 인증 수산물 출시</h3>
                                            <p class="td_com">CJ프레시웨이, 푸드 펀딩으로 '착한 연어' 선봬… 와디즈에 ASC 인증 수산물 출시     생산부터 유통까지 엄격한 기준 적용한 칠레 파타고니아 고품질 연어 새로운 맛 찾아 20</p>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_title" style="display:none">CS CENTER</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">CS CENTER</h3>
                        <h2 class="main_title">고객상담센터</h2>
                    </div>
                    <article class="colm_fr">
                        <h3 class="lst_tit">비즈니스 상담센터</h3>
                        <ul class="lst1">
                            <li class="item1">
                                <h3 class="item_tit">식자재 구매 상담</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li>
                            <li class="item2">
                                <h3 class="item_tit">단체급식 위탁 상담</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li>
                            <li class="item3">
                                <h3 class="item_tit">협력사 상담</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li>
                        </ul>
                        <h3 class="lst_tit">간편 상담센터</h3>
                        <ul class="lst2">
                            <li class="item1">
                                <h3 class="item_tit">챗봇 문의</h3>
                                <a href="" class="item_more">문의하기</a>
                            </li>
                            <li class="item2">
                                <h3 class="item_tit">고객의 소리</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li>
                            <li class="item3">
                                <h3 class="item_tit">FAQ</h3>
                                <a href="" class="item_more">보러가기</a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
        </div>
        <%@ include file="./footer.jsp" %>
    </div>
</body>
</html>