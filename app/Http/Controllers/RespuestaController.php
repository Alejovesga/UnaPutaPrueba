<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Pregunta;
use App\Models\Respuesta;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\RespuestaRequest;
use Illuminate\Support\Facades\Log;


class RespuestaController extends Controller
{
    public function index(){
        try {
                if(!Auth::check()){
                    Log::warning('Se intenta entrar a responder preguntas frecuentes sin iniciar sesion');
                    return redirect('/Premio_nacional_OES/Evaluadores');
                }else{
                        if(auth()->user()->Tipo_Usuario==1){
                            $preguntas=DB::select('SELECT p.id, p.pregunta,p.email, p.created_at
                            FROM preguntas p
                            order by p.created_at DESC');
                            
                            $respuestas=DB::select('SELECT respuesta, id_pregunta
                            FROM `respuestas`');
                            Log::info("Se observan las preguntas frecuentes por el administrador: ".auth()->user()->Usuario);
                            return view('respuesta', compact('preguntas', 'respuestas'));
                        }else if(auth()->user()->Tipo_Usuario==2){
                            return redirect('/Premio_nacional_OES/evaluador');
                        }else{
                            return redirect('/Premio_nacional_OES/evaluador2');
                        }
                }
            } catch (\Throwable $th) {
                Log::error('Error al ver preguntas frecuentes '.$th->getMessage());
                return redirect()->back()->withErrors('Error');
            }
        
        
    }

    public function responder(RespuestaRequest $request){
        try {
           $respuesta=Respuesta::create($request->validated());
            Log::info("Se responde pregunta frecuente por el administrador: ".auth()->user()->Usuario);
            return redirect('Premio_nacional_OES/Evaluadores/respuesta')->withSuccess('Respondido');
        } catch (\Throwable $th) {
            Log::error('Error al responder pregunta '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }

    public function eliminar($id){
        try {
            $pregunta= Pregunta::findOrFail($id);
            $pregunta->delete();
            Log::info("Se elimina pregunta frecuente ".$id." por el administrador: ".auth()->user()->Usuario);
            return redirect('Premio_nacional_OES/Evaluadores/respuesta')->withSuccess('Eliminado');
        } catch (\Throwable $th) {
            Log::error('Error al eliminar pregunta '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }

    public function editar($id){
        try {
            $pregunta=Pregunta::findOrFail($id);
            Log::info("Se observa pregunta frecuente ".$id." por el administrador: ".auth()->user()->Usuario);
            return view('preguntaEdit', compact('pregunta'));
        } catch (\Throwable $th) {
            Log::error('Error al ver pregunta a editar '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }
    public function update($id){

        try {
            $pregunta=request()->except(['_token', '_method', 'Editar']);
            Pregunta::where('id','=',$id)->update($pregunta); 
            Log::info("Se edita pregunta frecuente ".$id." por el administrador: ".auth()->user()->Usuario);      
            return redirect('Premio_nacional_OES/Evaluadores/respuesta')->withSuccess('Editado ');
        } catch (\Throwable $th) {
            Log::error('Error al editar pregunta '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }
}
