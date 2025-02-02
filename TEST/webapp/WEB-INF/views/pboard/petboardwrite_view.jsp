<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<title>PingPing</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/js/PetBoard.js"></script>

<script type="text/javascript">

	$(document).ready(function(){

		$("#insertPet").submit(function(event){
			event.preventDefault();
			let bnum = $("#bnum").val();
			let userid = $("#userid").val();
			let btitle = $("#btitle").val();
			let bcontent = $("#bcontent").val();
			let cate_no = Number($("#cate_no").val());

			let insert ={
					bnum : bnum,
					userid : userid,
					btitle : btitle,
					bcontent : bcontent,
					cate_no : cate_no
			}
			console.log($("#bnum").val() + "---------------------------------------------");
			let pet = PetBoard();
			
			pet.insert(insert,function(result){
				console.log(result);
				if (cate_no == 1) {
				    let url = '/pboard/noticeList/';
				    location.replace(url);
				} else if (cate_no == 2) {
				    let url = '/pboard/QAList/';
				    location.replace(url);
				} else if (cate_no == 3) {
				    let url = '/pboard/review/';
				    location.replace(url);
				} else {
				    console.log("알 수 없는 카테고리 번호입니다.");
				}
				
			});
			
		});
		
		
	});
</script>

</head>
<body>

	<h1>게시글 작성</h1>
      <form id="insertPet" action="insert" method="post"> 
      <input type="hidden" id="bnum">
      	제목 <input id="btitle" type="text" name="btitle"> <br/>
      	작성자 id : <input id="userid" type="text" name="userid"> <br/>
      	내용 <input id="bcontent" type="text"  name="bcontent"><br/>
      	카테고리 <select id="cate_no" name="category">
    		<option value="1">공지사항</option>
    		<option value="2">Q&A</option>
    		<option value="3">후기</option>
		</select>
		<br/>
      	<input type="submit" value="제출"><br>
      </form>
</body>
</html>