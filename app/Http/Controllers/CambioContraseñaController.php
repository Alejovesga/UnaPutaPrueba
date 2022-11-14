<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CambioContraseñaRequest;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
class CambioContraseñaController extends Controller
{
    public function index(){
        if(!Auth::check()){
            return redirect('/Premio_nacional_OES/Evaluadores');
        }
        Log::info("Ingreso a cambio de contraseña el usuario: ".auth()->user()->Usuario);
        return view('CambioContrasena');
    }


    public function cambiar(CambioContraseñaRequest $request, User $usuario){
        try {
           $usuario=auth()->user();
            $credential=$request->getCredential();
            if(Auth::validate($credential)){
                $usuario->update([
                    'password'=>bcrypt($request->nuevapassword)
                ]);
                Log::info("Cambio de contraseña de: ".auth()->user()->Usuario);
                return redirect('cambiocontrasena')->withSuccess('Cambiado');
            }else{
                Log::alert("Se han ingresado credenciales incorrrectas");
                return redirect('cambiocontrasena')->withErrors('Credencial incorrecta');
            }
        } catch (\Throwable $th) {
            Log::error('Error en Cambio de contraseña'.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        

    }
}
