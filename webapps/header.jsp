<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = "";
	String name = "";
	if(session.getAttribute("id")!=null) {
		id = (String) session.getAttribute("id");
		name = (String) session.getAttribute("name");
	}
	String path1 = request.getContextPath();
%>
        <header class="hd">
            <nav class="tnb">
                <div class="tnb_wrap">
                    <ul class="left_tnb">
<%
	if(id.equals("admin") && id != "") {
%>
						<li><a href="<%=path1 %>/admin/index.jsp">관리자</a></li> 
<%
	}
%>
<% if(id != "") { %>
                        <li><a href="<%=path1 %>/mypage.jsp">마이페이지</a></li>  
                        <li><a href="<%=path1 %>/logout.jsp">로그아웃</a></li>
<% } else if(!(id.equals("admin"))){ %>
                        <li><a href="<%=path1 %>/login.jsp">로그인</a></li>
                        <li><a href="<%=path1 %>/agreement.jsp">회원가입</a></li>
<% } %>

                        
                    </ul>
                    <ul class="right_tnb">
                        <li><a href="https://smartstore.naver.com/cjfreshway01" class="sns1">A1</a></li>
                        <li><a href="https://www.youtube.com/channel/UC1MUkmNae8N5tbcQc24BE3g?view_as=subscrib" class="sns2">A2</a></li>
                        <li><a href="https://www.instagram.com/cjfreshway_official/" class="sns3">A3</a></li>
                    </ul>
                </div>
            </nav>
            <div class="main">
                <div class="main_wrap">
                    <a href="<%=path1 %>/index.jsp" class="logo">
                        <img src="<%=path1 %>/images/headerlogo_pc_kor.png" alt="CJ프레시웨이로고">
                    </a>
                    <nav class="gnb">
                        <ul class="gnb_fr">
                            <li><a href="<%=path1 %>/company/company.jsp">솔루션</a>
                                <div class="sub item1">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/company/company.jsp#page1">회사소개</a></li>
                                        <li><a href="<%=path1 %>/company/company.jsp#page2">사업영역</a></li>
                                        <li><a href="<%=path1 %>/company/company.jsp#page3">역량/인프라</a></li>
                                        <li><a href="<%=path1 %>/company/company.jsp#page4">브랜드</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/manage/manage.jsp">지속가능경영</a>
                                <div class="sub item2">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/manage/manage.jsp#page1">전략</a></li>
                                        <li><a href="<%=path1 %>/manage/manage.jsp#page2">주요활동 및 성과</a></li>
                                        <li><a href="<%=path1 %>/manage/manage.jsp#page3">윤리경영</a></li>
                                        <li><a href="<%=path1 %>/manage/manage.jsp#page4">사회공헌</a></li>
                                        <li><a href="<%=path1 %>/manage/manage.jsp#page5">보고서 및 정책</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/board/newsroom.jsp">뉴스룸</a>
                                <div class="sub item3">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/board/newsroom.jsp#page1">보도자료</a></li>
                                        <li><a href="<%=path1 %>/board/newsroom.jsp#page2">미디어</a></li>
                                        <li><a href="<%=path1 %>/board/newsroom.jsp#page3">홍보영상/브로슈어</a></li>
                                        <li><a href="<%=path1 %>/board/newsroom.jsp#page4">공지사항</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/invest/info.jsp">투자정보</a>
                                <div class="sub item4">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/invest/info.jsp#page1">경영정보</a></li>
                                        <li><a href="<%=path1 %>/invest/info.jsp#page2">주가정보</a></li>
                                        <li><a href="<%=path1 %>/invest/info.jsp#page3">재무정보</a></li>
                                        <li><a href="<%=path1 %>/invest/info.jsp#page4">IR 자료실</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/career/emp.jsp">채용</a>
                                <div class="sub item5">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/career/emp.jsp#page1">인사정보</a></li>
                                        <li><a href="<%=path1 %>/career/emp.jsp#page2">CJ프레시웨어人</a></li>
                                        <li><a href="<%=path1 %>/career/emp.jsp#page3">채용정보</a></li>
                                        <li><a href="<%=path1 %>/career/emp.jsp#page4">인재 POOL</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <label for="sitemap_ck" class="sitemap_btn" title="관계 사이트">관계 사이트</label>
                </div>
            </div>
            <input type="checkbox" id="sitemap_ck">
            <div class="sitemap">
                <div class="sitemap_fr">
                    <label for="sitemap_ck" class="close_btn">닫기</label>
                    <div id="realtedSites">
                        <ul class="selectul">
                            <li class="group">CJ그룹
                                <ul>
                                    <li><a href="http://www.cj.net" target="_blank" title="새 창">CJ주식회사</a></li>
                                </ul>
                            </li>
                            <li class="group">식품 &amp; 식품서비스
                                <ul>
                                    <li><a href="http://www.cj.co.kr/" target="_blank" title="새 창">CJ제일제당(식품)</a></li>
                                    <li><a href="http://www.cjfoodville.co.kr/" target="_blank" title="새 창">CJ푸드빌</a></li>
                                    <li><a href="/" class="self">CJ프레시웨이</a></li>
                                </ul>
                            </li>
                            <li class="group">생명공학
                                <ul>
                                    <li><a href="https://www.cj.co.kr/kr/about/business/bio" target="_blank" title="새 창">CJ제일제당 BIO사업부문</a></li>
                                    <li><a href="https://www.cj.co.kr/kr/about/business/bio" target="_blank" title="새 창">CJFEED&amp;CARE</a></li>
                                </ul>
                            </li>
                            <li class="group">물산 &amp; 신유통
                                <ul>
                                    <li><a href="https://www.cjlogistics.com/ko/main" target="_blank" title="새 창">CJ대한통운</a></li>
                                    <li><a href="http://www.cjenc.co.kr/kr/Default.asp" target="_blank" title="새 창">CJ대한통운 건설부문</a></li>
                                    <li><a href="https://www.oliveyoung.co.kr/store/company/brandStory.do" target="_blank" title="새 창">CJ올리브영</a></li> 
                                    <li><a href="https://www.cjolivenetworks.co.kr/" target="_blank" title="새 창">CJ올리브네트웍스</a></li>
                                    <li><a href="https://company.cjonstyle.com/index.asp" target="_blank" title="새 창">CJ ENM 커머스부문</a></li>
                                </ul>
                            </li>
                            <li class="group">엔터테인먼트 &amp; 미디어
                                <ul>
                                    <li><a href="https://www.cjenm.com/ko/" target="_blank" title="새 창">CJ ENM 엔터테인먼트부문</a></li>
                                    <li><a href="http://corp.cgv.co.kr/" target="_blank" title="새 창">CJ CGV</a></li>
                                </ul>
                            </li>
                            <li class="group">글로벌 법인
                                <ul>
                                    <li><a href="https://cjamerica.com/" target="_blank" title="새 창">CJ America</a></li>
                                    <li><a href="https://www.cjchina.net/index.html" target="_blank" title="새 창">CJ China</a></li>
                                    <li><a href="http://www.cjjapan.net/" target="_blank" title="새 창">CJ Japan</a></li>
                                    <li><a href="https://cjvietnam.vn/" target="_blank" title="새 창">CJ Vietnam</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>