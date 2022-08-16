<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	가나다라마바사아자차카타파
	<script>
	let obj = {
		name : "elie",
		age : 5,
	};
	
	console.log(obj);
	
	let obj2 = obj;
	console.log("obj2 : ", obj2);
	console.log(obj2.name);
	obj.name = 'iliy';
	console.log("obj.name : ", obj.name);
	console.log("obj2.name : ", obj2.name);
	
	let number = 3;
	let number2= number;
	console.log("number : ", number);
	console.log("number2 : ", number2);
	
	number = 6;
	console.log("number : " , number);
	console.log("number2 : " , number2);
</script>
	<div class="between" id="paging" style="justify-content: normal;">
		<button class="page_btn" onclick="loadReviewPcData(1, &quot;number&quot;)" id="1" style="color: black; font-weight: 500;">1</button>
		<button class="page_btn" onclick="loadReviewPcData(2, &quot;number&quot;)" id="2" style="color: black;">2</button>
		<button class="page_btn" onclick="loadReviewPcData(3, &quot;number&quot;)" id="3" style="color: black;">3</button>
		<button class="page_btn" onclick="loadReviewPcData(4, &quot;number&quot;)" id="4" style="color: black;">4</button>
		<button class="page_btn" onclick="loadReviewPcData(5, &quot;number&quot;)" id="5" style="color: black;">5</button>
		<button class="page_btn" onclick="loadReviewPcData(6, &quot;number&quot;)" id="next" style="color: black;">&gt;</button>
	</div>

	
</body>
</html>

