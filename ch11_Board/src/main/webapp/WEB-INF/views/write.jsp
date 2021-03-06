<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>글쓰기</title> 
		<link rel="stylesheet" href="/hyh/css/style.css" />
	</head>
	<body>
		<div id="board">
			<h3>글쓰기</h3>
			<div class="write">
				<form action="/hyh/write" method="post" enctype="multipart/form-data">
					<input type="hidden" name="uid" value="${ member.uid }" />
					<input type="hidden" name="regip" value="${ member.regip }" />
					<table>
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" placeholder="제목을 입력하세요." required /></td>
						</tr>				
						<tr>
							<td>내용</td>
							<td>
								<textarea name="content" rows="20" required></textarea>
							</td>
						</tr>
						<tr>
							<td>첨부</td>
							<td>
								<input type="file" name="fname" />
							</td>
						</tr>
					</table>
					<div class="btns">
						<a href="/hyh/list" class="cancel">취소</a>
						<input type="submit" class="submit" value="작성완료" />
					</div>
				</form>
			</div>
		</div>
	</body>
</html>


