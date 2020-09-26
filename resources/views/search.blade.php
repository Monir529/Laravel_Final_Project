
  @extends('layouts.app')

  @section('content')

<div class="container">

   <table border='1'>
  <tr>
    <th>Id</th>
    <th>Store_Name</th>
    <th>Area</th>
    <th>Product_Name</th>
    <th>Price</th>
    
  </tr>

@foreach($products as $item)
  <tr>
    <td>{{$item->id}}</td>
    <td>{{$item->S_name}}</td>
    <td>{{$item->Area}}</td>
    <td>{{$item->P_name}}</td>
    <td>{{$item->price}}</td>
  </tr>
 @endforeach
</table>
</div>
@endsection
