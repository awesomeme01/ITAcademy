<%@page pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<style type="text/css">
		body{
	background-color: lightgray;
	margin: 0;
	padding: 0;
}
header{
	display: block;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	border-left: 5px solid black;
	border-right: 5px solid black;
	background-color: #545454;
	color: white;
	padding: 30px;
}
header h1{
	text-align: center;
	display: block;
	font-family: arial;
	font-size: 30px;
	font-weight: 600;
	letter-spacing: 0.3em;
	margin: 0;
	padding: 0;
}
header h1 span{
	font-weight: 400;
	color: orange;
	letter-spacing: 0.2em;
}
#buttonBlock{
	width: 35%;
	align-self: center;
	margin: 50px auto;
	display: block;
}
.button{
	display: block;
	text-align: center;
	text-decoration: none;
	background-color: lightblue;
	font-family: arial;
	color: gray;
	font-size: 20px;
	width: 60%;
	margin: 20px auto;
	padding: 10px 15px;
	border-radius: 5px;
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
	<title>IT|Academy</title>
</head>
<body>
<header>
	<h1><span>IT</span>Academy</h1>
</header>
<div id="buttonBlock">
	<a href="apply.jsp" class="button">Создать заявку</a>
	<a href="" class="button">Посмотреть заявку</a>
</div>
</body>
</html>