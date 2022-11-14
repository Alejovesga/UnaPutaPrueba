<?php

namespace App\Http\Controllers;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function index(){
        if(Auth::check()){
            return redirect('/Premio_nacional_OES/Evaluadores');
        }
        return view('Login');
    }

    public function Login(LoginRequest $request){
        try {
             $credentials=$request->getCredentials();

            if(!Auth::validate($credentials)){
                Log::alert("Se han ingresado credenciales incorrrectas");
                return redirect('/Premio_nacional_OES/Evaluadores')->withErrors('Credenciales incorrectas');
                
            }
            $usuario=Auth::getProvider()->retrieveByCredentials($credentials);
            Auth::login($usuario);
            Log::info("Inciando sesion");
            return $this->authenticated($request, $usuario);
        } catch (\Throwable $th) {
            Log::error('Error en login'.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }

       
    }

    public function authenticated(Request $request, $usuario){

        try {
            if(auth()->user()->Tipo_Usuario==1){
                Log::info("Incio de sesion Administrador: ".auth()->user()->Usuario);
                return redirect('/Premio_nacional_OES/Evaluadores');
            }else if(auth()->user()->Tipo_Usuario==2){
                Log::info("Incio de sesion Evaluador: ".auth()->user()->Usuario);
                return redirect('/Premio_nacional_OES/evaluador');
            }else{
                return redirect('/Premio_nacional_OES/evaluador2');
            }
        //return redirect('/home');
        } catch (\Throwable $th) {
            Log::error('Error en login'.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }

        
        
    }
}
