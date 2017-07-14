<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>View Downloadable File</title>
	<style>
		.table{
			width: 400px;
		}

	</style>
</head>
<body>
	<table class="table">
		<tr>
			<th>Title</th>
			<th>Action</th>
		</tr>
		@foreach($allFiles as $file)
			<tr>
				<td>{{$file->title}}</td>
				<td>{{$file->size}}</td>
				{{-- Here download="" attribute is given in the <a> tag for file download. But it's not working good, So i need to find out another technique. --}}
				<td><a href="download/{{$file->id}}"><button>Download</button></a></td>
			</tr>
		@endforeach
	</table>
</body>
</html>