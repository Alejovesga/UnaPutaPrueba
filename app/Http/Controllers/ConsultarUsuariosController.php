<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class ConsultarUsuariosController extends Controller
{

    public function index(){
        try {
           if(Auth::check()){
            if(auth()->user()->Tipo_Usuario==2 || auth()->user()->Tipo_Usuario==3){
                return redirect()->back();
            }
            Log::info("Ingreso a consultar usuarios, administrador: ".auth()->user()->Usuario);
            return redirect('/Premio_Nacional_OES/Evaluadores/consulta/show');
        }    
        return view('Login');
        }catch (\Throwable $th) {
            Log::error('Error en consulta usuarios '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }
    public function show(){

        try {
            if(Auth::check()){
                if(auth()->user()->Tipo_Usuario==2 || auth()->user()->Tipo_Usuario==3){
                    return redirect()->back();
                }
            $datos['usuarios']=User::all();
            Log::info("Ingreso a consultar usuarios, administrador: ".auth()->user()->Usuario);
            return view('consultaUsuarios', $datos);
        }
            return redirect('/login');
        }catch (\Throwable $th) {
            Log::error('Error en consulta usuarios '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }

        
    }

    public function edit($id){

        try {
           $usuario=User::findOrFail($id);
           Log::info("Editar usuario, administrador: ".auth()->user()->Usuario);
            return view('edit', compact('usuario'));
        } catch (\Throwable $th) {
            Log::error('Error '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }

    public function update(Request $request, $id){

        try {
            $usuario=request()->except(['_token', '_method', 'actualizar']);
            User::where('id','=',$id)->update($usuario);

            $datos['usuarios']=User::paginate();
            //return view('consultaUsuarios', $datos)->with('success', 'Editado');
            Log::info("Administrador: ".auth()->user()->Usuario. " ha editado el usuario: ".$id);
            return redirect('/Premio_Nacional_OES/Evaluadores/consulta/show')->withsuccess('Editado'); 
        }catch (\Throwable $th) {
            Log::error('Error al editar usuario '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }

        
    }
}
