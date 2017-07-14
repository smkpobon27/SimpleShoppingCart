<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>File download</title>
	<style>
		form{
			margin-left: 300px;
			margin-top: 50px;
		}
	</style>
</head>
<body>
<h1 style="margin-left: 300px;">File Upload Form:</h1>
	<form action="/store" method="post" enctype="multipart/form-data">
		{{csrf_field()}}
		File Title: <input type="text" name="title" ><br>
		Select a File: <input type="file" name="upload" style="margin-top:20px;">
		<br>
		<input type="submit" value="Upload" style="margin-left: 90px;margin-top:20px;">
	</form>
</body>
</html>