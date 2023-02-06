<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:if test="${empty list}">
  		<span id="none" class="h1_font" style="color:red;">조회 결과가 더 이상 없습니다.</span>
    </c:if>

	<c:forEach var="item" items="${list }"> 
            <div>
                <div class="sitterList">
                    <div class="sitterImg"> <!-- carousel 시작 -->
                    	<img src="${item.profileImg }"><br> 
								<span class="mb_font" style="margin-top: 10px;">${item.name }</span>
                        <a href="/member/vsitter?allowid=${item.allowId }&grade=${item.grade}" class="sitterAtag"></a>
                        
                        
                        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                        class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                        aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                        aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item  active">
                                    <div class="sitterImg">
                                        <img src="/images/member/2022102780036_0.jpg" class="" alt="...">
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="sitterImg">
                                        <img src="/images/member/designtwoply-project093-3.jpg" class="" alt="...">
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="sitterImg">
                                        <img src="/images/member/designtwoply0000.png" class="" alt="...">
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div> <!--carouesl 끝  -->
                    </div>  <!--sitter IMg  -->
                    <div>
                        <a href="#" class="sitterAtag">
                            <div class="locAndTitleDiv">
									<p
										style="font-size: 14px; letter-spacing: -0.1px; color: rgb(94, 99, 109);">${item.addr }</p>
									<p
										style="font-size: 20px; letter-spacing: -0.2px; color: rgb(56, 60, 72); margin-top: 9.5px;">${item.title }</p>
							</div>
                            <div class="underDiv">
                                <div class="underTitle">
                                    <p
											style="color: rgb(56, 60, 72); font-size: 13px; letter-spacing: -0.3px; max-width: 400px;">
											· ${item.smokeId == 1 ? "흡연자입니다" : "비흡연자입니다" } · 반려동물 있어요</p>
                                    <div style="display: flex; align-items: center; flex-direction: row; margin-bottom: 30px;">
                                        <div style="width:140px; display: flex; flex-direction: row; justify-content: space-between; over">
                                            <div class="starImg"
												style="display: flex; flex: 1 1 0%; justify-content: space-between;">
												<c:forEach var="n" begin="1" end="${item.stars}" step="1">
													<img src="/images/member/pngwing.com.png"> 
												</c:forEach>
											</div>
                                        </div>
                                        <div style="displplay: flex; margin-left: 10px;">
											<span class="mb_font">후기 (${item.reviewCnt }) 건</span>
										</div>
                                    </div>
                                </div>
                                <div style="text-align: center; margin-top: 0px;">
									<p style="font-size: 13px; font-weight: bold;margin-bottom:-5px;">등급</p>
									<div class="gradeImg">
										<c:if test="${item.grade eq '1' }">
											<img src="/images/member/sprout.svg">
										</c:if>
										<c:if test="${item.grade eq '2' }">
											<img src="/images/member/bronze.svg">
										</c:if>
										<c:if test="${item.grade eq '3' }">
											<img src="/images/member/silver.svg">
										</c:if>
										<c:if test="${item.grade eq '4' }">
											<img src="/images/member/gold.svg">
										</c:if>
										
										<!--등급 image  -->
									</div>
								</div>

                            </div>
                        </a>
                    </div>
                </div>
			<br>
            </div>
			</c:forEach>
				
