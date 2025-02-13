<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크루 관리</title>
<%@ include file="/WEB-INF/frame/default/header.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="<c:url value='/css/crew/edit.css'/>">
<script>
const crewIdx = '${crewIdx}';
const memberIdx = '${sessionScope.memberVo.memberIdx}';
/*부트서버*/
const url = 'http://52.79.178.223:8081';
/*뷰 서버*/	
const url2 = '${pageContext.request.contextPath}';
/*s3 경로*/
const crewFileUrl = '';
</script>
<script src="<c:url value='/js/crew/edit.js'/>"></script>
</head>
<body>
	<div class="section">
		<div class="box">
			<%@ include file="/WEB-INF/frame/crew/crew-manage-nav.jsp"%>
			<div class="edit_section">
				<form method="post" enctype="multipart/form-data" id="tag-form">
					<table>
						<tr>
							<td><label for="crewName">크루명</label></td>
							<td>
							<input type="text" id="crewName" name="crewName" class="form-control" required="required">
							<span id="msg" class="display_none"></span>
							</td>
						</tr>
						<tr>
							<td><label for="crewPhoto">크루 사진</label></td>
							<td><img id="img" class="hiking" title="클릭하시면 원본크기로 보실 수 있습니다." style="cursor: pointer;" onclick="doImgPop(this.src)"/>
							<input type="file" id="crewPhoto" name="crewPhoto" class="form-control form-control-lg"></td>
						</tr>
						<tr>
						</tr>
						<tr>
							<td><label for="crewintro">크루 소개글</label></td>
							<td><textarea id="crewintro" name="crewDiscription" class="form-control"></textarea>
						</tr>
						<tr>
							<td>
		          	<div class="tr_hashTag_area">
		            	<p><strong>해시태그</strong></p>
		            </div>
		          </td>
		        	<td>
			        	<ul id="tag-list"></ul>
			          <div class="form-group">
			          	<input type="text" id="tag" size="7" placeholder="#" style="width: 300px;" />
			          </div>
		          </td>
						</tr>
						<tr>
							<td></td>
							<td><input id="submit" type="button" value="수정" class="form-control btn-secondary"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
<%@ include file="/WEB-INF/frame/default/footer.jsp"%>
</html>
