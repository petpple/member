<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <c:forEach var="item" items="${list }">
					<div class="col-auto">
						<div class="sitterList"
							style="width: 370px; height: 225px; padding-top: 20px;">
							<div class="sitterImg">
								<!-- carousel 시작 -->
								<img src="/images/user/suprise.jpg"><br> <span
									class="mb_font" style="margin-top: 10px;">${item.name }</span>
							</div>
							<!--sitter IMg  -->
							<a href="/member/vsitter?allowid=${item.allowId }" class="sitterAtag">

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
										<p style="font-size: 13px; font-weight: bold;">${item.count } / ${item.time }</p>
										<div class="gradeImg">
											<img src="/images/member/다운로드.jfif">
											<!--등급 image  -->
										</div>
									</div>

								</div>
							</a>
						</div>
				</div>
				</c:forEach>
