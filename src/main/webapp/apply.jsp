<%@page pageEncoding="UTF-8"%>
<html>
<head>
	<title>Добавить заявку</title>
	<meta charset ="UTF-8">
	<style type="text/css">
		body{
	background-color: lightgray;
	margin: 0;
	padding: 0;
}
.form1{
	display: block;
	width: 50%;
	margin: 50px auto;
	background-color: white;
	border-radius: 20px;
	padding: 30px;
	box-shadow: 0px 0px 1em #223165;
}
.form1 h5{
	font-size: 16px;
	font-family: arial;
	font-weight: 600;
	color: darkgreen;
	/*text-align: center;*/
	margin: 0;
	margin-bottom: 10px;
	margin-top: 10px;
}
.form1 h1{
	font-size: 30px;
	font-family: sans-serif;
	font-weight: 500;
	color: darkgreen;
	text-align: center;
}
.redstar{
	font-weight: 700;
	color: red;
}

.form1 input,select, textarea{
	background-color: lightgray;
	height: 40px;
	width: 100%;
	margin: 0 auto;
	display: block;
	border: none;
	padding: 5px;
	padding-left: 10px;
	box-sizing: border-box;
	border-radius: 5px;
	font-size: 16px;
	font-family: arial;
	transition: .2s ease;
}
.focuses:focus{
	outline:none;
	background-color: #bae4c3;
	transition: .2s ease;
	border: 2px solid darkgreen;
}
textarea{
	height: 140px;
	resize: none;
	padding: 10px 5px;
}
#submitBtn{
	display: block;
	background-color: lightgreen;
	color: darkgreen;
	margin-top: 30px;
	font-size: 20px;
	height: 50px;
	transition: .3s ease;
}
#submitBtn:hover{
	background-color: darkgreen;
	color: white;
	transition: .3s ease;
	height: 61px;
	font-size: 25px;
}
#backBlock{
	width: 50%;
	margin: 50px auto;
	display: block;
}
#back{
	display: block;
	text-align: center;
	text-decoration: none;
	background-color: #eab5b5;
	font-family: arial;
	font-size: 20px;
	color: #6f3b3b;
	width: 80px;
	padding: 10px 15px;
	border-radius: 10px;
	box-shadow: 0px 0px .5em #223165;
}
#back:hover{
	background-color: #d25858;
	color: #eaeaea;
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

	</style>
</head>
<body>
<header>
	<h1><span>IT</span>Academy</h1>
</header>
<form class="form1" action="add_apply" method= "post">
	<h1>Добавление заявки</h1>
	<h5>ФИО<span class="redstar">*</span></h5>
	<input class="focuses" type="text" name ="fio">
	<h5>Наименование курса<span class="redstar">*</span></h5>
	<select class="focuses" name="courses">
		<option value="Java">Java</option>
		<option value="C#">C#</option>
		<option value="Python">Python</option>
	</select>
	<h5>Почта</h5>
	<input type="text" class="focuses" name="email">
	<h5>Дата рождения</h5>
	<input type="date" class="focuses" name="birthdate">
	<h5>Пол<span class="redstar">*</span></h5>
	<select class="focuses" name="gender">
		<option value="male">Мужчина</option>
		<option value="female">Женщина</option>
	</select>
	<h5>Кратко о себе</h5>
	<textarea  class="focuses" name="selfstory"></textarea>
	<h5>Статус<span class="redstar">*</span></h5>
	<!-- <input type="checkbox" name="isOnline"> -->
	<select class="focuses" name="isOnline">
		<option value="on">Online</option>
		<option value="off">Offline</option>
	</select>
	<input id="submitBtn" type="submit" name="submit">
</form>
<div id="backBlock">
<a id="back" href="index.jsp">Назад</a>
</div>
</body>
</html>