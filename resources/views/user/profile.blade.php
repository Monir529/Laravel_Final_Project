@extends('layouts.app')

@section('content')
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Profile</title>
	<link rel="stylesheet" href="">
</head>
<body>

	
<div class="container">
<table class="table" border="1">
  <tr>
    <th><h1>Id:</h1></th>
    <td><h1>{{$user['id']}}</h1></td>
</tr>
<tr>

    <th><h1>Name:</h1></th>
    <td><h1>{{$user['name']}}</h1></td>
</tr>
    <tr>
    <th><h1>Email:</h1></th>
    <td><h1>{{$user['email']}}</h1></td>
  </tr>
   

</table>
</div>

</body>
</html>
@endsection