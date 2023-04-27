<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <footer class="ft">
            <article class="row row1">
                <div class="ft_wrap">
                    <nav class="fnb left">
                        <ul class="fnb_box">
                            <li><a href="pravacy.html">개인정보처리방침</a></li>
                            <li><a href="usepromotion.html">이용약관</a></li>
                            <li><a href="#">법적고지</a></li>
                            <li><a href="#">이메일 무단수집 거부</a></li>
                            <li><a href="#">온라인 제보</a></li>
                        </ul>
                    </nav>
                    <select name="favo" id="favo" class="favo right" onchange="favo(this)">
                        <option value="">FAMILY SITE</option>
                        <option value="http://www.cj.net/">CJ주식회사</option>
                        <option value="http://www.cj.co.kr/">CJ제일제당</option>
                        <option value="https://www.cj.co.kr/kr/about/business/bio">CJ바이오</option>
                        <option value="https://www.cjlogistics.com/ko/main">CJ대한통운</option>
                        <option value="https://www.cjenm.com/ko/">CJ ENM</option>
                        <option value="http://corp.cgv.co.kr/">CJ CGV</option>
                    </select>
                    <script>
                    function favo(s){
                        var hs = s.value;
                        if(hs!=""){
                            window.open(hs, "팝업");
                        }
                    }    
                    </script>
                </div>
            </article>
            <article class="row row2">
                <div class="ft_wrap">
                    <div class="slogan left">
                        FOOD<br>
                        BUSINESS PARTNER<br>
                        CREATING<br>
                        THE SUCCESS WAY
                    </div>
                    <nav class="ft_link_fr right">
                        <dl class="ft_link item1">
                            <dt>솔루션</dt>
                            <dd><a href="">회사소개</a></dd>
                            <dd><a href="">사업영역</a></dd>
                            <dd><a href="">역량/인프라</a></dd>
                            <dd><a href="">브랜드</a></dd>
                        </dl>
                        <dl class="ft_link item2">
                            <dt>지속가능경영</dt>
                            <dd><a href="">OVERVIEW</a></dd>
                            <dd><a href="">전략</a></dd>
                            <dd><a href="">주요활동 및 성과</a></dd>
                            <dd><a href="">윤리경영</a></dd>
                            <dd><a href="">사회공헌</a></dd>
                            <dd><a href="">보고서 및 정책</a></dd>
                        </dl>
                        <dl class="ft_link item3">
                            <dt>뉴스룸</dt>
                            <dd><a href="">보도자료</a></dd>
                            <dd><a href="">미디어</a></dd>
                            <dd><a href="">홍보영상/브로슈어</a></dd>
                            <dd><a href="">공지사항</a></dd>
                        </dl>
                        <dl class="ft_link item4">
                            <dt>투자정보</dt>
                            <dd><a href="">경영정보</a></dd>
                            <dd><a href="">주가정보</a></dd>
                            <dd><a href="">재무정보</a></dd>
                            <dd><a href="">IR 자료실</a></dd>
                        </dl>
                        <dl class="ft_link item5">
                            <dt>채용</dt>
                            <dd><a href="">인사정보</a></dd>
                            <dd><a href="">CJ프레시웨이 人SIDE</a></dd>
                            <dd><a href="">채용정보</a></dd>
                            <dd><a href="">인재 POOL</a></dd>
                        </dl>
                    </nav>
                </div>
            </article>
            <article class="row row3">
                <div class="ft_wrap">
                    <div class="ft_logo left"></div>
                    <address class="copyright right">서울시 마포구 월드컵북로 54길 25 S-city   COPYRIGHT© CJ FRESHWAY. ALL RIGHTS RESERVED.</address>
                </div>
            </article>
        </footer>
    <div class="fix_area">
        <a href="#page5" class="cir_box counsel">고객<br>상담센터</a>
        <a href="#" class="cir_box totop">↑<br>TOP</a>
    </div>