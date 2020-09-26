@extends('layouts.app')

@section('content')
<div class="container">

<table class="table" border='1'>
  <tr>
    <th>Id</th>
    <th>P_Id</th>
    <th>U_Id</th>
    <th>Product_Name</th>
    <th>Store_Name</th>
    <th>Area</th>
    <th>Price</th>
  </tr>
  @foreach($order as $item)
  <tr>
    <td>{{$item->id}}</td>
    <td>{{$item->p_id}}</td>
    <td>{{$item->Uid}}</td>
    <td>{{$item->P_name}}</td>
    <td>{{$item->S_name}}</td>
    <td>{{$item->Area}}</td>
 

    <td>{{$item->price}}</td>
  
  </tr>
 @endforeach
</table>
 <a class="btn btn-primary" href="/pdf">download pdf</a>

</div>
@endsection
