<?php
namespace App\Http\Controllers;
use App\Http\Requests;
use Illuminate\Http\Request;
use DB;
use PDF;

class ItemController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function pdfview()
    {
        $pdfView = DB::select('SELECT * FROM products');
        $pdf = PDF::loadView('pdfview', ['pdfViews'=> $pdfView])
        ->setPaper('a4','landscape');
        return $pdf->download('product.pdf');
   }

 public function transection()
    {
        $pdfView = DB::select('SELECT * FROM orders');
        $pdf = PDF::loadView('pdf', ['pdfViews'=> $pdfView])
        ->setPaper('a4','landscape');
        return $pdf->download('Transection.pdf');
   }

}