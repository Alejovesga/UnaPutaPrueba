<?php

namespace App\Http\Controllers;
use App\Http\Requests\UsersInscriptionRequest;
use App\Http\Requests\InscripcionupdateRequest;
use Illuminate\Http\Request;
use App\Models\users_inscription;
use Illuminate\Support\Facades\Log;

class UsersInscriptionController extends Controller
{
    public function index(){
        Log::info("Se ingresa a formulario de inscripcion");
        return view('inscripcion');
    }

    public function inscribir(UsersInscriptionRequest $request){
        try {
            $userinscripcion=users_inscription::create($request->validated());
            Log::info("Se realiza inscripcion");
            return redirect('Premio_Nacional_OES/inscripcion')->withSuccess('Ha sido inscrito');
        } catch (\Throwable $th) {
            Log::error('Error al realizar inscripcion '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }

    public function update(Request $request, $id){
        try {
            $inscrito=request()->except(['_token', '_method', 'asignar']);
            users_inscription::where('id','=',$id)->update($inscrito);
            Log::info("Se ha asignado evaluador a la inscripcion ".$id." por el administrador: ".auth()->user()->Usuario);
            return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion'); 
        } catch (\Throwable $th) {
            Log::error('Error al asignar evaluador '.$th->getMessage());
            return redirect()->back()->withErrors('Error');
        }
        
    }
}
