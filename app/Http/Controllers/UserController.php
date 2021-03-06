<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
class UserController extends Controller
{

   public function  edit(){
      if(Auth::user()){
      	$user=User::find(Auth::user()->id);

      	if($user){
      	return view('user.edit')->withUser($user);
      }else{
      	return redirect()->back();
      }
      
      }else{
      	return redirect()->back();
     }
 
    //  return view('user.edit');
   }


    public function update(Request $request){
    $user=User::find(Auth::user()->id);

if($user){

    $validate = $request->validate([
    	'name'=>'required|min:2',
        'email'=>'required|email|unique:users'
    ]);

	$user->name=$request['name'];
		$user->email=$request['email'];
     $user->save();

     return redirect()->back();

} else{
	return redirect()->back();

}
}





    function profile($id){
     $user=User::find(Auth::user()->id);


        if($user){
        	return view('user.profile')->withUser($user);
        }
        else{
        	return redirect()->back();
        }
    }
}
