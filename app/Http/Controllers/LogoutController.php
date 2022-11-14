<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class LogoutController extends Controller
{
    public function logout(){
        Log::info("Cierra sesion el usuario: ".auth()->user()->Usuario);
        Session::flush();
        Auth::logout();
        Log::info("Sesion cerrada");
        return redirect('/login');
        
    }
}
