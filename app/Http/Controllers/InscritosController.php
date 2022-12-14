<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\users_inscription;
use App\Models\ScalesUser;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class InscritosController extends Controller
{
    public function index(){
        try {
            if(Auth::check()){
            Log::info("Se observan los inscritos, observa el usuario: ".auth()->user()->Usuario);
            return view('inscritos');
        }
        return view('Login');
        } catch (\Throwable $th) {
            Log::error('Error al ver inscritos '.$th->getMessage());
            return redirect()->back()->withErrors('error');
        }
       
    }
    
    public function InscritosFiltro(Request $request){
        try {
        if(Auth::check()){
            
                $filtroips=$request->get('nombreips');
                $filtronit=$request->get('numeronit');
                $filtrocodigo=$request->get('Cinscripcion');
                $datos=DB::table('users_inscriptions')
                    ->leftjoin('users', 'users_inscriptions.Evaluador','=','users.id')
                    ->join('municipios', 'users_inscriptions.municipio','=','municipios.id')
                    ->join('departamentos', 'municipios.id_departamento','=','departamentos.id')
                    ->select('users_inscriptions.ips', 'users_inscriptions.nit','departamentos.departamento', 
                    'users_inscriptions.director_medico', 'users_inscriptions.id','users_inscriptions.Codigorandom',
                    'users_inscriptions.telefono', 'users_inscriptions.email', 'users_inscriptions.codigoRandom', 'users.Usuario')
                    ->where('users_inscriptions.codigoRandom','=', $filtrocodigo)
                    ->orWhere('users_inscriptions.nit','=', $filtronit)
                    ->orWhere('users_inscriptions.ips',$filtroips)
                    ->orderby('users_inscriptions.ips')->get();
                    $evaluadosT=ScalesUser::all();
                    $usuarios=User::all();
                    Log::info("Se observan los inscritos filtrados, observa el usuario: ".auth()->user()->Usuario);
                    return view('inscritos',compact('datos', 'evaluadosT', 'usuarios'));
              }      
            } catch (\Throwable $th) {
                Log::error('Error al filtrar inscritos '.$th->getMessage());
                return redirect()->back()->withErrors('error');
            }     
    }

    public function Inscritos(Request $request){
        try {
            if(Auth::check()){
            if(auth()->user()->Tipo_Usuario==1){
            $datos=DB::select('SELECT ui.Codigorandom, ui.id, ui.ips, ui.nit, ui.codigo_habilitacion_prestador,
             ui.fecha_inscripcion_reps, ui.fecha_vencimiento, ui.naturaleza_juridica, ui.nivel_complejidad,d.departamento, 
             m.municipio, ui.direccion, ui.caracter_territorial, ui.director_general, ui.director_medico, ui.referente_ips, ui.cargo, 
             ui.telefono, ui.email, ui.atencion_infantil, ui.deteccion_temprana_enfermedades_cardiovasculares, ui.programas_atencion_obesidad, 
             ui.programas_atencion_diabetes, ui.programas_atencion_hta, ui.procesos_atencion_deteccion_temprana_cancer,
              ui.enfoque_diferencial_procesos_atencion, ui.codigoRandom, u.Usuario
             FROM users_inscriptions ui
            left join users u on u.id=ui.Evaluador
            inner join municipios m on m.id=ui.municipio
            inner join departamentos d on d.id=m.id_departamento
            ORDER BY ui.codigoRandom asc');
            

            $evaluadosT=ScalesUser::all();
            $usuarios=User::all();
            Log::info("Se observan los inscritos, observa el administrador: ".auth()->user()->Usuario);
            return view('inscritos',compact('datos', 'evaluadosT', 'usuarios'));
            
            }else{
                /*$datos=DB::select('SELECT ui.Codigorandom, ui.id, ui.ips, ui.nit, ui.codigo_habilitacion_prestador,
                ui.fecha_inscripcion_reps, ui.fecha_vencimiento, ui.naturaleza_juridica, ui.nivel_complejidad,d.departamento, 
                m.municipio, ui.direccion, ui.caracter_territorial, ui.director_general, ui.director_medico, ui.referente_ips, ui.cargo, 
                ui.telefono, ui.email, ui.atencion_infantil, ui.deteccion_temprana_enfermedades_cardiovasculares, ui.programas_atencion_obesidad, 
                ui.programas_atencion_diabetes, ui.programas_atencion_hta, ui.procesos_atencion_deteccion_temprana_cancer,
                 ui.enfoque_diferencial_procesos_atencion, ui.codigoRandom, u.Usuario
                FROM users_inscriptions ui
               left join users u on u.id=ui.Evaluador
               inner join municipios m on m.id=ui.municipio
               inner join departamentos d on d.id=m.id_departamento
               where u.id=:id ORDER BY ui.ips Asc',['id' => auth()->user()->id]);*/


                $datos=DB::table('users_inscriptions')
                ->leftjoin('users', 'users_inscriptions.Evaluador','=','users.id')
                ->join('municipios', 'users_inscriptions.municipio','=','municipios.id')
                ->join('departamentos', 'municipios.id_departamento','=','departamentos.id')
                ->select('users_inscriptions.ips', 'users_inscriptions.nit','departamentos.departamento', 'municipios.municipio','users_inscriptions.direccion',
                'users_inscriptions.director_medico', 'users_inscriptions.id','users_inscriptions.Codigorandom',
                'users_inscriptions.telefono', 'users_inscriptions.email', 'users_inscriptions.codigoRandom', 'users.Usuario')
                ->where('users.id',auth()->user()->id)
                ->orderby('users_inscriptions.ips')->get();

   
               $evaluadosT=ScalesUser::all();
               $usuarios=User::all();
               Log::info("Se observan los inscritos, observa el evaluador: ".auth()->user()->Usuario);
               return view('inscritos',compact('datos', 'evaluadosT', 'usuarios')); 
            }
            
        }
        return redirect('/Premio_nacional_OES/Evaluadores');
        } catch (\Throwable $th) {
            Log::error('Error al ver inscritos '.$th->getMessage());
            return redirect()->back()->withErrors('error');
        }
        
    }
}
