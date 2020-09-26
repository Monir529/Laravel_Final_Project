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

    <table>
        <tr>
        <th>id</th>
        <th>p_id</th>
        <th>Uid</th>
       
        </tr>
        @foreach ($pdfViews as $pdfView)
            <tr>
                <td>{{$pdfView->id }}</td>
                <td>{{ $pdfView->p_id }}</td>
                <td>{{ $pdfView->Uid }}</td>
             
                
            </tr>
        @endforeach
    </table>
</div>
</body>
</html>