<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %><%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

	 <table class="table table-bordered id="tbl-product">
            <tr>
               <th>내 등급 ID</th>
               <th>내 별</th>
               <th>date</th>
               <th>유저 ID</th>
               <th>grade ID</th>
            </tr>
			<c:forEach var="b" items="${myGradeList}">
				<div>
					<tr>
						<td class="text_ct">${b.myGradeID}</td>
						<td class="text_ct">${b.starPointNum}</td>
						<td class="text_ct">${b.starDate}</td>
						<td class="text_ct">${b.userID}</td>
						<td class="text_ct">${b.gradeID}</td>
					</tr>
				</div>
			</c:forEach>
 	</table>
</body>


</html>
