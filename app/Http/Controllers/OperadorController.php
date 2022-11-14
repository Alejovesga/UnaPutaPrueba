<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class OperadorController extends Controller
{
    public function index(){
        if(Auth::check()){
            Log::info("Se observan home de evaluador: ".auth()->user()->Usuario);
            return view('operador');
        }
        Log::warning('Se intenta entrar a home evaluador sin iniciar sesion');
        return view('Login');
    }
}
