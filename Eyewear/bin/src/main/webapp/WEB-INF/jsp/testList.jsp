<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>테스트~~</h1>
	
	<table style="border: 1px solid;">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>직급</th>
			<th>부서</th>
		</tr>
	
		<tbody>
			<c:forEach items="${list }" var="result">
				<tr>
					<td>${result.m_no }</td>
					<td>${result.m_name }</td>
					<td>${result.m_job }</td>
					<td>${result.m_dept }</td>
				</tr>
			</c:forEach>
	</tbody>
	</table>
	
	${list }
</body>
</html>