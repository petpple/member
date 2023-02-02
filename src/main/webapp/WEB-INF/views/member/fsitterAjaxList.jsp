<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <c:if test="${empty list}">
  		<span id="none" class="h1_font" style="color:red;">조회 결과가 더 이상 없습니다.</span>
  </c:if>
   <c:if test="${not empty  list }">
  	

  <c:forEach var="item" items="${list }">
					<div class="col-auto">
						<div class="sitterList"
							style="width: 370px; height: 230px; padding-top: 20px;">
							<div class="sitterImg">
								<!-- carousel 시작 -->
								<img src="${item.profileImg }"><br> <span
									class="mb_font" style="margin-top: 10px;">${item.name }</span>
							</div>
							<!--sitter IMg  -->
							<a href="/member/vsitter?allowid=${item.allowId }&grade=${item.grade}" class="sitterAtag">

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
										<div
											style="display: flex; align-items: center; flex-direction: row; margin-bottom: 80px;">
											<div
												style="width: 140px; display: flex; flex-direction: row; justify-content: space-between;">
												<div class="starImg"
													style="display: flex; flex: 1 1 0%; justify-content: space-between;">
													<c:forEach var="n" begin="1" end="${item.stars}" step="1">
														<img src="/images/member/pngwing.com.png"> 
													</c:forEach>
												</div>
											</div>
											<div style="displplay: flex; margin-left: 10px;">
												<span class="mb_font">후기 (${item.reviewCnt })</span>
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
				</c:forEach>
				
				  </c:if>
