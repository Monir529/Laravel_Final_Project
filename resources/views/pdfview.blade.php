<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<style type="text/css">
table td, table th
{
 border:1px solid black;
}
</style>
<div class="container">
<br/>
<a class="btn btn-warning" href="{{ route('PDF_report') }}">Download PDF</a>
    <table>
        <tr>
        <th>id</th>
        <th>Product Name</th>
        <th>Store Name</th>
        <th>Area</th>
        <th>price</th>
       
        </tr>
        @foreach ($pdfViews as $pdfView)
            <tr>
                <td>{{$pdfView->id }}</td>
                <td>{{ $pdfView->P_name }}</td>
                <td>{{ $pdfView->S_name }}</td>
                <td>{{ $pdfView->Area }}</td>
                <td>{{ $pdfView->price }}</td>
                
            </tr>
        @endforeach
    </table>
</div>
</body>
</html>