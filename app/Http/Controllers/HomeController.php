<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\product;
use App\User;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
         $data= product::get();    
   return view('home',['data'=>$data]);
    }
 public function search(){


    $search_text=$_GET['query'];

    $products=product::where('P_name','like','%'.$search_text.'%')
                      ->orwhere('Area','like','%'.$search_text.'%')
                      ->orwhere('id','like','%'.$search_text.'%')
                      ->get();

               
    return view('search',['products'=>$products])->withQuery ( $search_text);
}
 

  }


 