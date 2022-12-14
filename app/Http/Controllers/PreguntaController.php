<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\PreguntaRequest;
use App\Models\User;
use App\Models\Pregunta;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class PreguntaController extends Controller
{
    public function index(){
        try {
            $preguntas=DB::select('SELECT p.id, p.pregunta,p.email, p.created_at
            FROM preguntas p
            order by p.created_at DESC');
       
            $respuestas=DB::select('SELECT respuesta, id_pregunta
            FROM `respuestas`');
            Log::info("Se observan las preguntas frecuentes");
            return view('Pregunta', compact('preguntas', 'respuestas'));
        } catch (\Throwable $th) {
            Log::error('Error al ver preguntas frecuentes '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }

    public function preguntar(PreguntaRequest $request){
        try {
            $datos=$request->validated();
            $datos=$request->getData();
            $pregunta=Pregunta::create($datos);
            Log::info("Se ha realizado una pregunta");
            return redirect('Premio_nacional_OES/Preguntas_Frecuentes')->withSuccess('Pregunta enviada'); 
        } catch (\Throwable $th) {
            Log::error('Error al preguntar '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
           
    }

}
