<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/Template/Top.jsp" />
<jsp:include page="/CustomFrameWork/FrameWork/loginNeed.jsp" />

<div class="board-wrapper">
	<div class="content-title">
		<h2 class="content-menu-h2">Board</h2>
		<ol class="breadcrumb content-title-breadcrumb">
			<li>Board</li>
			<li>BoardForm</li>
		</ol>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div class="table-responsive form-group">
					<p class="text-center notice-p">게시글을 지우시려면 게시글을 더블클릭해주세요</p>
					<form id="InquiryBoardFrm" name="InquiryBoardFrm">
							<table class="table board-table">
								<tbody>
									<tr>
										<th>제목</th>
										<td><input type="text" id="b-title" name="title"
											class="form-control"/></td>
									</tr>
									<tr>
										<th>게시자명</th>
										<td><input type="text" id="b-name" name="writer"
											class="form-control" value="${sessionScope.loginName}" readonly="readonly"/></td>
									</tr>
									<tr>
										<th>게시날짜</th>
										<td><input type="date" id="b-date" name="date"
											class="form-control"/></td>
									</tr>
									<tr>
										<th>게시글</th>
										<td><textarea cols="30" rows="20" name="content"
												id="b-content" class="form-control"></textarea></td>
									</tr>
									<tr>
										<td colspan="2" align="right">
											 <button id="InquirySubmitBtn" class="InquirySubmitBtn btn btn-success">게시글업로드</button>
											 <c:if test="${sessionScope.loginName != null}">
												<button id="InquiryReviseBtn" class="InquiryReviseBtn btn btn-success">${sessionScope.loginName}님 게시글 수정</button>
												<input type="hidden" class="userMember" value="${sessionScope.loginName}">
											 </c:if>
										</td>
									</tr>
								</tbody>
							</table>
					</form>
				</div>
				<div class="BoardResult-div"></div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/Template/Bottom.jsp" />