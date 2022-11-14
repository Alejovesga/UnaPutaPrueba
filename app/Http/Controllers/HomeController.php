<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class HomeController extends Controller
{
    public function index(){
        if(Auth::check()){
            if(auth()->user()->Tipo_Usuario==1){
                Log::info("Se encuentra en home el administrador: ".auth()->user()->Usuario);
                return view('home');
            }else if(auth()->user()->Tipo_Usuario==2){
                Log::info("Se encuentra en home el evaluador: ".auth()->user()->Usuario);
                return redirect('/Premio_nacional_OES/evaluador');
            }else{
                return redirect('/Premio_nacional_OES/evaluador2');
            }
        }
        Log::warning('Se intenta entrar a home sin iniciar sesion');
        return view('Login');

    }
}
