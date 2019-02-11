<%@page pageEncoding="UTF-8" %>
<html>
<head>
	<meta charset="UTF-8">
	<style>
		body{
	background-color: lightgray;
	margin: 0;
	padding: 0;
}
#buttonBlock{
	width: 50%;
	margin: 50px auto;
	display: block;
}
.button{
	display: inline-block;
	text-decoration: none;
	background-color: lightblue;
	margin: 20px;
	font-family: arial;
	color: gray;
	font-size: 20px;
	padding: 10px 15px;
	border-radius: 10px;
	box-shadow: 0px 0px .5em #223165;
	transition: 0.3s ease;
}
.button:hover{
	background-color: #d25858;
	color: #eaeaea;
	transition: 0.3s ease;
	box-shadow: 0px 0px .3em #223165;
}

	</style>
	<title>itACADEMY</title>
</head>
<body>
<div id="buttonBlock">
	<a href="apply.jsp" class="button">Создать заявку</a>
	<a href="" class="button">Посмотреть заявку</a>
</div>
</body>
</html>