@extends('layouts.app')

@section('content')
<div class="container">

<form action="{{url('/search')}}" method="get">
    
{{ csrf_field() }}

<div>
    <input type="search" name="query" placeholder="search">
    <button type="submit">Search</button>
</div>


</form>
<br><br>

<table class="table" border='1'>
  <tr>
    <th>Id</th>
    <th>Store_Name</th>
    <th>Area</th>
    <th>Product_Name</th>
    <th>Price</th>
    <th>purchase</th>
  </tr>
  @foreach($data as $item)
  <tr>
    <td>{{$item->id}}</td>
    <td>{{$item->S_name}}</td>
    <td>{{$item->Area}}</td>
    <td>{{$item->P_name}}</td>
    <td>{{$item->price}}</td>
    <td><a class="btn btn-primary" href="order/{{$item->id}}">order</a></td>
  </tr>
 @endforeach
</table>
 <a class="btn btn-primary" href="/pdfview">download pdf</a>

</div>
@endsection

