<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\product;
use App\User;
use App\order;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
class ordercontroller extends Controller
{
    

    public function order($id){

    	$order = new order;
    	$order->p_id=$id;
        $order->Uid=(Auth::user()->id);
    	$order->save();
    	return redirect('home');

    }

    public function transection(){
	   
            $order = DB::table('products')
                        ->join('orders', 'products.id', '=', 'orders.p_id')
                        ->get();
                        

           return view('transection')->with('order',$order);
       

}

}
