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
	border-bottom: 30px;
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
	<title>IT|Academy</title>
</head>
<body>
<header>
	<h1><span>IT</span>Academy</h1>
</header>
<table>
	<tr>
		<th>id</th>
		<th>fio</th>
		<th>courses</th>
		<th>email</th>
		<th>isONline</th>
		<th>birthdate</th>
	</tr>
	<c: foreach items = "${applications}" var="item">
		<tr>
			<td>${item.id}</td>
			<td>${item.fio}</td>
			<td>${item.courses}</td>
			<td>${item.email}</td>
			<td>${item.isOnline}</td>
			<td>${item.birthdate}</td>
		</tr>
	<c:foreach>
</table>
</body>
</html>