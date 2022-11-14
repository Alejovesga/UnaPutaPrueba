<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\users_inscription;
use App\Models\Scale;
use App\Models\ScalesUser;
use App\Models\Recommendation;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ScaleUsersRequest;
use App\Http\Requests\ScaleCardioRequest;
use App\Http\Requests\ScaleCancerRequest;
use App\Http\Requests\ScaleEnfoqueRequest;
use App\Http\Requests\ResultRequest;
use App\Http\Requests\ScaleSalvarCardioRequest;
use App\Http\Requests\ScaleSalvarPerinatalRequest;
use App\Http\Requests\ScaleSalvarCancerRequest;
use App\Http\Requests\ScaleSalvarEnfoqueRequest;
use App\Models\Result;
use App\Models\Rule;
use App\Charts\ResultsInscriptions;
use App\Charts\InscritosTerritorio;
use App\Charts\InscritosCategorias;
use App\Charts\InscritosFases;
use App\Charts\InscritosFasesCategorias;
use App\Charts\NaturalezaJuridica;
use App\Charts\NivelComplejidad;
use Illuminate\Support\Facades\Log;

class EvaluarController extends Controller
{

    public function index($id){
        if(Auth::check()){
            $idinscritos=users_inscription::findOrFail($id);
            Log::info("Ingreso de evaluador: ".auth()->user()->Usuario. " a evaluar la inscripcion: ".$id);
            return view('evaluacion',compact('idinscritos'));
        }
        Log::alert("No se ha iniciado sesion para entrar a evaluacion");
        return redirect('/Premio_nacional_OES/Evaluadores');
    }


    public function evaluarPerinatal($Codigorandom, $category){
        if(Auth::check()){
            try {              
                
                $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                $inscripcion=users_inscription::findOrFail($Codigorandom);
                $scales=Scale::all();
                $is=ScalesUser::where('category',1)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                $rules=Rule::all();
                $recommendations=Recommendation::where('category',$category )->get();
                foreach($theinscritos as $th){
                    foreach($is as $i){
                        if($i->codigoUsuario==$th->Codigorandom && $i->completado==1){
                            Log::info("Intento ingresar a materno perinatal ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                            return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                        }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){
                            return view('EvaluarPerinatal',  compact('inscripcion', 'recommendations', 'scales', 'rules', 'is'));
                        }
                    }
                }           
                Log::info("Ingreso a evaluar materno perinatal por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                return view('EvaluarPerinatal', compact('inscripcion', 'recommendations', 'scales', 'rules', 'is'));
           
            } catch (\Throwable $th) {
               Log::error('Error en evaluar materno perinatal '.$th->getMessage().' inscripcion '.$Codigorandom);
               return redirect('/Premio_nacional_OES/Evaluadores')->withErrors('Error al evaluar');
            }
            
        }
        return redirect('/Premio_nacional_OES/Evaluadores');
    }



    public function saveEvaluar(ScaleUsersRequest $request, $Codigorandom){
        try {
                $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                $inscripcion=users_inscription::findOrFail($Codigorandom);
                $is=ScalesUser::where('category',1)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                foreach($theinscritos as $th){
                    foreach($is as $i){
                        if($i->codigoUsuario==$th->Codigorandom && $i->completado==1){
                            Log::info("Intento ingresar a materno perinatal ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                            return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                        }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){
                            $scaleuser=$request->validated();
                            $scaleuser=$request->getData();  
                             ScalesUser::where('CodigoUsuario','=',$i->codigoUsuario)->where('category',1)->update($scaleuser);
                             Log::info("Evaluado y guardado materno perinatal por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                            return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Evaluado Atención en salud Materno Perinatal');
                        }
                    }
                }  
            $datos=$request->validated();
            $datos=$request->getData();
            $scalesuser=ScalesUser::create($datos);
            Log::info("Evaluado y guardado materno perinatal por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
            return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Evaluado Atención en salud Materno Perinatal');
        } catch (\Throwable $th) {
            Log::error('Error en guardar materno perinatal '.$th->getMessage().' inscripcion '.$Codigorandom);
            return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion')->withErrors('Error al evaluar');
        }        
    }

    public function salvarEvaluarPerinatal(ScaleSalvarPerinatalRequest $request, $Codigorandom){
        try {
                $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                $inscripcion=users_inscription::findOrFail($Codigorandom);
                $is=ScalesUser::where('category',1)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                foreach($theinscritos as $th){
                    foreach($is as $i){
                        if($i->codigoUsuario==$th->Codigorandom  && $i->completado==1){
                            Log::info("Intento ingresar a materno perinatal ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                            return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                        }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){

                            $scaleuser=$request->validated();
                            $scaleuser=$request->getData();  
                            ScalesUser::where('CodigoUsuario','=',$i->codigoUsuario)->where('category',1)->update($scaleuser);
                            Log::info("Evaluado y salvado materno perinatal por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                            return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Salvado Atención en salud Materno Perinatal');
                        }
                    }
                }                        
                        $datos=$request->validated();
                        $datos=$request->getData();                
                    $scalesuser=ScalesUser::create($datos);
            Log::info("Evaluado y salvado materno perinatal por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
            return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Salvado Atención en salud Materno Perinatal');
        } catch (\Throwable $th) {
            Log::error('Error en salvar materno perinatal '.$th->getMessage().' inscripcion '.$Codigorandom);
            return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion')->withErrors('Error al evaluar');
        }        
    }
        public function evaluarCardiovascular($Codigorandom, $category){
                if(Auth::check()){
                    try {              
                        
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $scales=Scale::all();
                        $is=ScalesUser::where('category',2)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        $rules=Rule::all();
                        $recommendations=Recommendation::where('category',$category )->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom && $i->completado==1){
                                    Log::info("Intento ingresar a enfermedades cardiovasculares ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){
                                    return view('EvaluarCardiovascular',  compact('inscripcion', 'recommendations', 'scales', 'rules', 'is'));
                                }
                            }
                        }             
                        
                        Log::info("Ingreso a evaluar enfermedades caridiovasculares por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                        return view('EvaluarCardiovascular', compact('inscripcion', 'recommendations', 'scales', 'rules', 'is'));
                
                    } catch (\Throwable $th) {
                        Log::error('Error en evaluar enfermedades cardiovasculares '.$th->getMessage().' inscripcion '.$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores')->withErrors('Error al evaluar');
                    }
                    
                }
                return redirect('/Premio_nacional_OES/Evaluadores');
            }

            public function saveEvaluarcardio(ScaleCardioRequest $request, $Codigorandom){
                try {
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $is=ScalesUser::where('category',2)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom && $i->completado==1){
                                    Log::info("Intento ingresar a enfermedades cardiovasculares ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){

                                    $scaleuser=$request->validated();
                                    $scaleuser=$request->getData();  
                                    ScalesUser::where('CodigoUsuario','=',$i->codigoUsuario)->where('category',2)->update($scaleuser);
                                    Log::info("Evaluado y guardado enfermedades caridiovasculares por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Evaluado Detección temprana de enfermedades cardiovasculares');
                                }
                            }
                        }                        
                                $datos=$request->validated();
                                $datos=$request->getData();                
                            $scalesuser=ScalesUser::create($datos);
                    Log::info("Evaluado y guardado enfermedades caridiovasculares por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Evaluado Detección temprana de enfermedades cardiovasculares');
                } catch (\Throwable $th) {
                    Log::error('Error en guardar enfermedades cardiovasculares '.$th->getMessage().' inscripcion '.$Codigorandom);
                    return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion')->withErrors('Error al evaluar');
                }        
            }


            public function salvarEvaluarcardio(ScaleSalvarCardioRequest $request, $Codigorandom){
                try {
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $is=ScalesUser::where('category',2)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom  && $i->completado==1){
                                    Log::info("Intento ingresar a enfermedades cardiovasculares ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){

                                    $scaleuser=$request->validated();
                                    $scaleuser=$request->getData();  
                                    ScalesUser::where('CodigoUsuario','=',$i->codigoUsuario)->where('category',2)->update($scaleuser);
                                    Log::info("Evaluado y salvado enfermedades caridiovasculares por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Salvado Detección temprana de enfermedades cardiovasculares');
                                }
                            }
                        }                        
                                $datos=$request->validated();
                                $datos=$request->getData();                
                            $scalesuser=ScalesUser::create($datos);
                    Log::info("Evaluado y salvado enfermedades caridiovasculares por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Salvado Detección temprana de enfermedades cardiovasculares');
                } catch (\Throwable $th) {
                    Log::error('Error en salvar enfermedades cardiovasculares '.$th->getMessage().' inscripcion '.$Codigorandom);
                    return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion')->withErrors('Error al evaluar');
                }        
            }

















            public function evaluarCancer($Codigorandom, $category){
                if(Auth::check()){
                    try {              
                        
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $scales=Scale::all();
                        $is=ScalesUser::where('category',3)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        $rules=Rule::all();
                        $recommendations=Recommendation::where('category',$category )->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom && $i->completado==1){
                                    Log::info("Intento ingresar a deteccion temprana de cancer ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){
                                    return view('EvaluarCancer',  compact('inscripcion', 'recommendations', 'scales', 'rules', 'is'));
                                }
                            }
                        }             
                        
                        Log::info("Ingreso a evaluar deteccion temprana de cancer por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                        return view('EvaluarCancer', compact('inscripcion', 'recommendations', 'scales', 'rules','is'));
                
                    } catch (\Throwable $th) {
                        Log::error('Error en evaluar deteccion temprana de cancer '.$th->getMessage().' inscripcion '.$Codigorandom);
                        return redirect('/Premio_nacional_OES/Evaluadores')->withErrors('Error al evaluar');
                    }
                    
                }
                return redirect('/Premio_nacional_OES/Evaluadores');
            }

            public function saveEvaluarcancer(ScaleCancerRequest $request, $Codigorandom){
                try {
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $is=ScalesUser::where('category',3)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom && $i->completado==1){
                                    Log::info("Intento ingresar a deteccion temprana de cancer ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){

                                    $scaleuser=$request->validated();
                                    $scaleuser=$request->getData();  
                                    ScalesUser::where('CodigoUsuario','=',$i->codigoUsuario)->where('category',3)->update($scaleuser);
                                    Log::info("Evaluado y guardado deteccion temprana de cancer por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Evaluado Detección temprana de cáncer');
                                }
                            }
                        }
                    $datos=$request->validated();
                    $datos=$request->getData();
                    $scalesuser=ScalesUser::create($datos);
                    Log::info("Evaluado y guardado deteccion temprana de cancer por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Evaluado Detección temprana de cáncer');
                } catch (\Throwable $th) {
                    Log::error('Error en guardar deteccion temprana de cancer '.$th->getMessage().' inscripcion '.$Codigorandom);
                    return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion')->withErrors('Error al evaluar');
                }        
            }


            public function salvarEvaluarcancer(ScaleSalvarCancerRequest $request, $Codigorandom){
                try {
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $is=ScalesUser::where('category',3)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom  && $i->completado==1){
                                    Log::info("Intento ingresar a deteccion temprana de cancer ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){

                                    $scaleuser=$request->validated();
                                    $scaleuser=$request->getData();  
                                    ScalesUser::where('CodigoUsuario','=',$i->codigoUsuario)->where('category',3)->update($scaleuser);
                                    Log::info("Evaluado y salvado deteccion temprana de cancer por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Salvado Detección temprana de cáncer');
                                }
                            }
                        }                        
                                $datos=$request->validated();
                                $datos=$request->getData();                
                            $scalesuser=ScalesUser::create($datos);
                    Log::info("Evaluado y salvado deteccion temprana de cancer por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Salvado Detección temprana de cáncer');
                    
                } catch (\Throwable $th) {
                    Log::error('Error en salvar deteccion temprana de cancer '.$th->getMessage().' inscripcion '.$Codigorandom);
                    return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion')->withErrors('Error al evaluar');
                }        
            }





            public function evaluarEnfoque($Codigorandom, $category){
                if(Auth::check()){
                    try {              
                        ;
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $scales=Scale::all();
                        $is=ScalesUser::where('category',4)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        $rules=Rule::all();
                        $recommendations=Recommendation::where('category',$category )->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom && $i->completado==1){
                                    Log::info("Intento ingresar a enfoque diferencial ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){
                                    return view('EvaluarEnfoque',  compact('inscripcion', 'recommendations', 'scales', 'rules', 'is'));
                                }
                            }
                        }             
                       
                        Log::info("Ingreso a evaluar enfoque diferencial por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                        return view('EvaluarEnfoque', compact('inscripcion', 'recommendations', 'scales', 'rules','is'));
                
                    } catch (\Throwable $th) {
                    Log::error('Error en evaluar enfoque diferencial '.$th->getMessage().' inscripcion '.$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores')->withErrors('Error al evaluar');
                    }
                    
                }
                return redirect('/Premio_nacional_OES/Evaluadores');
            }

            public function saveEvaluarenfoque(ScaleEnfoqueRequest $request, $Codigorandom){
                try {
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $is=ScalesUser::where('category',4)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom && $i->completado==1){
                                    Log::info("Intento ingresar a enfoque diferencial ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){

                                    $scaleuser=$request->validated();
                                    $scaleuser=$request->getData();  
                                    ScalesUser::where('CodigoUsuario','=',$i->codigoUsuario)->where('category',4)->update($scaleuser);
                                    Log::info("Evaluado y guardado enfoque diferencial por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Evaluado Enfoque diferencial de las atenciones del prestador');
                                }
                            }
                        }
                    $datos=$request->validated();
                    $datos=$request->getData();
                    $scalesuser=ScalesUser::create($datos);
                    Log::info("Evaluado y guardado enfoque diferencial por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Evaluado Enfoque diferencial de las atenciones del prestador');
                } catch (\Throwable $th) {
                    Log::error('Error en guardar enfoque diferencial '.$th->getMessage().' inscripcion '.$Codigorandom);
                    return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion')->withErrors('Error al evaluar');
                }        
            }


            public function salvarEvaluarenfoque(ScaleSalvarEnfoqueRequest $request, $Codigorandom){
                try {
                        $inscripcion=users_inscription::findOrFail($Codigorandom);
                        $theinscritos=users_inscription::where('id',$Codigorandom )->get();
                        $is=ScalesUser::where('category',4)->where('codigoUsuario',$inscripcion->Codigorandom)->get();
                        foreach($theinscritos as $th){
                            foreach($is as $i){
                                if($i->codigoUsuario==$th->Codigorandom  && $i->completado==1){
                                    Log::info("Intento ingresar a enfoque diferencial ya evaluado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withErrors('Modulo ya evaluado');
                                }else if($i->codigoUsuario==$th->Codigorandom && $i->completado==0){

                                    $scaleuser=$request->validated();
                                    $scaleuser=$request->getData();  
                                    ScalesUser::where('CodigoUsuario','=',$i->codigoUsuario)->where('category',4)->update($scaleuser);
                                    Log::info("Evaluado y salvado enfoque diferencial por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Salvado Enfoque diferencial de las atenciones del prestador');
                                }
                            }
                        }                        
                                $datos=$request->validated();
                                $datos=$request->getData();                
                            $scalesuser=ScalesUser::create($datos);
                    Log::info("Evaluado y salvado enfoque diferencial por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/evaluaciones')->withSuccess('Salvado Enfoque diferencial de las atenciones del prestador');
                } catch (\Throwable $th) {
                    Log::error('Error en salvar enfoque diferencial '.$th->getMessage().' inscripcion '.$Codigorandom);
                    return redirect('/Premio_Nacional_OES/Evaluadores/consultaInscripcion')->withErrors('Error al evaluar');
                }        
            }






    public function resultado(ResultRequest $request, $Codigorandom){   
        //$evaluadoscale=$Codigorandom;
        //DB::select('SELECT  
         //`codigoUsuario` FROM `scales_users` WHERE codigoUsuario=7857');
        try {
            
            if(DB::table('results')->where('User', $Codigorandom)->exists()){
                try {
                   $result=$request->getResultPerinatal($Codigorandom); 
                   $resultc=$request->getResultCardio($Codigorandom);
                   $resultca=$request->getResultCancer($Codigorandom);  
                   $resulten=$request->getResultEnfoque($Codigorandom);
                    Result::where('User',$Codigorandom)->update($result);
                    Result::where('User',$Codigorandom)->update($resultc);
                    Result::where('User',$Codigorandom)->update($resultca);
                    Result::where('User',$Codigorandom)->update($resulten);
                    $resultT=$request->getResultTotal($Codigorandom);
                    Result::where('User',$Codigorandom)->update($resultT);
                    Log::info("Resultado generado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                    return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/resultadofinal');
                } catch (\Throwable $th) {
                    Log::error('Error al generar resultado, no se han hecho todas las evaluaciones '.$th->getMessage().' inscripcion '.$Codigorandom);
                   return redirect()->back()->withErrors('Error al generar resultado, realice todas las evaluaciones');
            }
                
            }else{                     
                    $resul=Result::all();
                    foreach($resul as $r){                  
                            if($r->User==$Codigorandom){
                                return redirect()->back()->withErrors('Resultado ya generado');
                            }                 
                    }
                               
                $resultado=new Result; 
                if (DB::table('users_inscriptions')->where('atencion_infantil', 'si')->where('Codigorandom', $Codigorandom)->exists()) {
                    $evaluadosPerinatal=ScalesUser::where('codigoUsuario', $Codigorandom)->where('category',1)->where('completado',1)->get();
                    foreach($evaluadosPerinatal as $evalp){       
                              
                    $porcentajeestructuraperinatal=round(((($evalp->estructura+$evalp->estructura2)*100)/10)*0.10,2);
                    $porcentajeprocesoperinatal=round(((($evalp->proceso+$evalp->proceso2+$evalp->proceso3+$evalp->proceso4+$evalp->proceso5+$evalp->proceso6)*100)/30)*0.10,2);
                    $porcentajeresultadoperinatal=round(((($evalp->resultado+$evalp->resultado2+$evalp->resultado3+$evalp->resultado4+$evalp->resultado5)*100)/25)*0.05,2);
                    $porcentajeperinatal=$porcentajeestructuraperinatal+$porcentajeprocesoperinatal+$porcentajeresultadoperinatal;
                    

                    $resultado->porcentaje_estructura_perinatal	=$porcentajeestructuraperinatal;
                    $resultado->porcentaje_proceso_perinatal=$porcentajeprocesoperinatal;
                    $resultado->porcentaje_resultado_perinatal=$porcentajeresultadoperinatal;
                    $resultado->porcentaje_perinatal=$porcentajeperinatal;

                    
                }
                }else{
                    $porcentajeestructuraperinatal=0;
                    $porcentajeprocesoperinatal=0;
                    $porcentajeresultadoperinatal=0;
                    $porcentajeperinatal=0;
                    $resultado->porcentaje_estructura_perinatal	=$porcentajeestructuraperinatal;
                    $resultado->porcentaje_proceso_perinatal=$porcentajeprocesoperinatal;
                    $resultado->porcentaje_resultado_perinatal=$porcentajeresultadoperinatal;
                    $resultado->porcentaje_perinatal=$porcentajeperinatal;

                }
                if (DB::table('users_inscriptions')->where('deteccion_temprana_enfermedades_cardiovasculares', 'si')->where('Codigorandom', $Codigorandom)->exists()) {
                $evaluadosCardio=ScalesUser::where('codigoUsuario', $Codigorandom)->where('category',2)->where('completado',1)->get();
                foreach($evaluadosCardio as $evalcar){       
                              
                    $porcentajeestructuracardio=round(((($evalcar->estructura+$evalcar->estructura2)*100)/10)*0.10,2);
                    $porcentajeprocesocardio=round(((($evalcar->proceso+$evalcar->proceso2+$evalcar->proceso3+$evalcar->proceso4+$evalcar->proceso5+$evalcar->proceso6+$evalcar->proceso7+$evalcar->proceso8+$evalcar->proceso9)*100)/45)*0.10,2);
                    $porcentajeresultadocardio=round(((($evalcar->resultado+$evalcar->resultado2+$evalcar->resultado3+$evalcar->resultado4)*100)/20)*0.05,2);
                    $porcentajecardio=$porcentajeestructuracardio+$porcentajeprocesocardio+$porcentajeresultadocardio;
                    

                    $resultado->porcentaje_estructura_cardio=$porcentajeestructuracardio;
                    $resultado->porcentaje_proceso_cardio=$porcentajeprocesocardio;
                    $resultado->porcentaje_resultado_cardio=$porcentajeresultadocardio;
                    $resultado->porcentaje_cardio=$porcentajecardio;                
                }
            }else{
                $porcentajeestructuracardio=0;
                $porcentajeprocesocardio=0;
                $porcentajeresultadocardio=0;
                $porcentajecardio=0;
                $resultado->porcentaje_estructura_cardio=$porcentajeestructuracardio;
                $resultado->porcentaje_proceso_cardio=$porcentajeprocesocardio;
                $resultado->porcentaje_resultado_cardio=$porcentajeresultadocardio;
                $resultado->porcentaje_cardio=$porcentajecardio;    

            }
            if (DB::table('users_inscriptions')->where('procesos_atencion_deteccion_temprana_cancer', 'si')->where('Codigorandom', $Codigorandom)->exists()) {
                $evaluadosCancer=ScalesUser::where('codigoUsuario', $Codigorandom)->where('category',3)->where('completado',1)->get();
                foreach($evaluadosCancer as $evalcan){       
                              
                    $porcentajeestructuracancer=round(((($evalcan->estructura+$evalcan->estructura2)*100)/10)*0.10,2);
                    $porcentajeprocesocancer=round(((($evalcan->proceso+$evalcan->proceso2+$evalcan->proceso3+$evalcan->proceso4)*100)/20)*0.10,2);
                    $porcentajeresultadocancer=round(((($evalcan->resultado+$evalcan->resultado2+$evalcan->resultado3+$evalcan->resultado4)*100)/20)*0.05,2);
                    $porcentajecancer=$porcentajeestructuracancer+$porcentajeprocesocancer+$porcentajeresultadocancer;
                    

                    $resultado->porcentaje_estructura_cancer=$porcentajeestructuracancer;
                    $resultado->porcentaje_proceso_cancer=$porcentajeprocesocancer;
                    $resultado->porcentaje_resultado_cancer=$porcentajeresultadocancer;
                    $resultado->porcentaje_cancer=$porcentajecancer;                
                }
            }else{
                $porcentajeestructuracancer=0;
                $porcentajeprocesocancer=0;
                $porcentajeresultadocancer=0;
                $porcentajecancer=0;
                $resultado->porcentaje_estructura_cancer=$porcentajeestructuracancer;
                $resultado->porcentaje_proceso_cancer=$porcentajeprocesocancer;
                $resultado->porcentaje_resultado_cancer=$porcentajeresultadocancer;
                $resultado->porcentaje_cancer=$porcentajecancer;  

            }
            if (DB::table('users_inscriptions')->where('enfoque_diferencial_procesos_atencion', 'si')->where('Codigorandom', $Codigorandom)->exists()) {
                $evaluadosEnfoque=ScalesUser::where('codigoUsuario', $Codigorandom)->where('category',4)->where('completado',1)->get();
                foreach($evaluadosEnfoque as $evalen){       
                              
                    $porcentajeestructuraenfoque=round(((($evalen->estructura+$evalen->estructura2+$evalen->estructura3)*100)/15)*0.10,2);
                    $porcentajeprocesoenfoque=round(((($evalen->proceso+$evalen->proceso2)*100)/10)*0.10,2);
                    $porcentajeresultadoenfoque=round(((($evalen->resultado)*100)/5)*0.05,2);
                    $porcentajeenfoque=$porcentajeestructuraenfoque+$porcentajeprocesoenfoque+$porcentajeresultadoenfoque;
                    

                    $resultado->porcentaje_estructura_enfoque=$porcentajeestructuraenfoque;
                    $resultado->porcentaje_proceso_enfoque=$porcentajeprocesoenfoque;
                    $resultado->porcentaje_resultado_enfoque=$porcentajeresultadoenfoque;
                    $resultado->porcentaje_enfoque=$porcentajeenfoque;                
                }
                
            }else{
                $porcentajeestructuraenfoque=0;
                $porcentajeprocesoenfoque=0;
                $porcentajeresultadoenfoque=0;
                $porcentajeenfoque=0;
                $resultado->porcentaje_estructura_enfoque=$porcentajeestructuraenfoque;
                $resultado->porcentaje_proceso_enfoque=$porcentajeprocesoenfoque;
                $resultado->porcentaje_resultado_enfoque=$porcentajeresultadoenfoque;
                $resultado->porcentaje_enfoque=$porcentajeenfoque; 

            }
                $resultado->PorcentajeEstructura=$porcentajeestructuraperinatal+$porcentajeestructuracardio+$porcentajeestructuracancer+$porcentajeestructuraenfoque;
                $resultado->PorcentajeProceso=$porcentajeprocesoperinatal+$porcentajeprocesocardio+$porcentajeprocesocancer+$porcentajeprocesoenfoque;
                $resultado->PorcentajeResultado=$porcentajeresultadoperinatal+$porcentajeresultadocardio+$porcentajeresultadocancer+$porcentajeresultadoenfoque; 
                $resultadoTotal=$porcentajeperinatal+$porcentajecardio+$porcentajecancer+$porcentajeenfoque;              
                $resultado->PorcentajeTotal=$resultadoTotal;
                if($resultadoTotal>=0 && $resultadoTotal<=30.99){
                    $resultado->Cinturon='Blanco';
                }else if($resultadoTotal>=31.00 && $resultadoTotal<=49.99){
                    $resultado->Cinturon='Amarillo';
                }else if($resultadoTotal>=50.00 && $resultadoTotal<=70.99){
                    $resultado->Cinturon='Verde';
                }else if($resultadoTotal>=71.00 && $resultadoTotal<=100.00){
                    $resultado->Cinturon='Negro';
                }
                $resultado->User=$Codigorandom;
                $resultado->save();
            
                 Log::info("Resultado generado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$Codigorandom);
                 return redirect('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$Codigorandom.'/resultadofinal');
            }
        } catch (\Throwable $th) {
        Log::error('Error al generar resultado, no se han hecho todas las evaluaciones '.$th->getMessage().' inscripcion '.$Codigorandom); 
         return redirect()->back()->withErrors('Error al generar resultado, realice todas las evaluaciones');

        }
        
    }

        public function final($id){
            try {
                $inscripcion=users_inscription::where('Codigorandom', $id);
                $resultadofinal=Result::where('User', $id)->get();
                Log::info("Se observa resultado por evaluador: ".auth()->user()->Usuario. ", inscripcion ".$id);
                return view('resultado', compact('resultadofinal', 'inscripcion'));
            } catch (\Throwable $th) {
                Log::error('Error al ver resultado '.$th->getMessage().' inscripcion'.$id); 
                return redirect()->back()->withErrors('Error');
            }         
        }

    public function evaluados(){
        try {
            if(auth()->user()->Tipo_Usuario==1){
                $resul=Result::all();
                if($resul->isEmpty()){
                    Log::warning('No hay resultados de instituciones evaluadas, intenta ver administrador: '.auth()->user()->Usuario);
                    return redirect()->back()->withErrors('No hay resultados de instituciones evaluadas');
                }else{
                    $evaluados=DB::table('results')
                    ->join('users_inscriptions','results.User','=','users_inscriptions.Codigorandom')
                    ->join('users','users_inscriptions.Evaluador','=','users.id')
                    ->select('results.porcentaje_estructura_perinatal', 
                    'results.porcentaje_proceso_perinatal', 'results.porcentaje_resultado_perinatal',
                    'results.porcentaje_estructura_cardio', 'results.porcentaje_proceso_cardio', 'results.porcentaje_resultado_cardio', 
                    'results.porcentaje_estructura_cancer', 'results.porcentaje_proceso_cancer', 'results.porcentaje_resultado_cancer', 'results.porcentaje_estructura_enfoque',
                    'results.porcentaje_proceso_enfoque', 'results.porcentaje_resultado_enfoque', 'results.PorcentajeEstructura', 'results.PorcentajeProceso', 'results.PorcentajeResultado', 
                    'results.porcentaje_perinatal', 'results.porcentaje_cardio', 'results.porcentaje_cancer', 'results.porcentaje_enfoque', 'results.PorcentajeTotal', 'results.User'
                    ,'users_inscriptions.ips', 'results.updated_at', 'users.Usuario', 'results.Cinturon')
                    ->orderbyDesc('results.PorcentajeTotal')->get();
                }
                
                $max=Result::max('PorcentajeTotal');
                $promedio=DB::select('SELECT avg(porcentaje_perinatal) as porcentaje_perinatal , avg(porcentaje_cardio) as porcentaje_cardio, avg(porcentaje_cancer) as porcentaje_cancer, avg(porcentaje_enfoque) as porcentaje_enfoque
                FROM `results` ');
                $mejorResult=DB::table('results')->select('porcentaje_perinatal', 'porcentaje_cardio', 'porcentaje_cancer', 'porcentaje_enfoque')
                ->where('PorcentajeTotal','>=',$max)->get();


            }else{
                /*$evaluados=DB::select('SELECT `porcentaje_estructura_perinatal`, 
                `porcentaje_proceso_perinatal`, `porcentaje_resultado_perinatal`,
                `porcentaje_estructura_cardio`, `porcentaje_proceso_cardio`, `porcentaje_resultado_cardio`, 
                `porcentaje_estructura_cancer`, `porcentaje_proceso_cancer`, `porcentaje_resultado_cancer`, `porcentaje_estructura_enfoque`,
                `porcentaje_proceso_enfoque`, `porcentaje_resultado_enfoque`, `PorcentajeEstructura`, `PorcentajeProceso`, `PorcentajeResultado`, 
                `porcentaje_perinatal`, `porcentaje_cardio`, `porcentaje_cancer`, `porcentaje_enfoque`, `PorcentajeTotal`, `User`
                FROM `results` r
                inner join users_inscriptions ui on ui.Codigorandom=r.User
                where ui.Evaluador=:id
                order by r.PorcentajeTotal desc',['id' => auth()->user()->id]);*/
                $resul=Result::all();
                if($resul->isEmpty()){
                    return redirect()->back()->withErrors('No hay resultados de instituciones evaluadas');
                }else{
                $evaluados=DB::table('results')
                ->join('users_inscriptions','results.User','=','users_inscriptions.Codigorandom')
                ->join('users','users_inscriptions.Evaluador','=','users.id')
                ->select('results.porcentaje_estructura_perinatal', 
                'results.porcentaje_proceso_perinatal', 'results.porcentaje_resultado_perinatal',
                'results.porcentaje_estructura_cardio', 'results.porcentaje_proceso_cardio', 'results.porcentaje_resultado_cardio', 
                'results.porcentaje_estructura_cancer', 'results.porcentaje_proceso_cancer', 'results.porcentaje_resultado_cancer', 'results.porcentaje_estructura_enfoque',
                'results.porcentaje_proceso_enfoque', 'results.porcentaje_resultado_enfoque', 'results.PorcentajeEstructura', 'results.PorcentajeProceso', 'results.PorcentajeResultado', 
                'results.porcentaje_perinatal', 'results.porcentaje_cardio', 'results.porcentaje_cancer', 'results.porcentaje_enfoque', 'results.PorcentajeTotal', 'results.User'
                ,'users_inscriptions.ips', 'results.updated_at', 'users.Usuario', 'results.Cinturon')
                ->where('users_inscriptions.Evaluador', auth()->user()->id)
                ->orderbyDesc('results.PorcentajeTotal')->get();
                $max=Result::max('PorcentajeTotal');
                $mejorResult=DB::table('results')->select('porcentaje_perinatal', 'porcentaje_cardio', 'porcentaje_cancer', 'porcentaje_enfoque')
                ->where('PorcentajeTotal','>=',$max)->get();
                $promedio=DB::select('SELECT avg(porcentaje_perinatal) as porcentaje_perinatal , avg(porcentaje_cardio) as porcentaje_cardio, avg(porcentaje_cancer) as porcentaje_cancer, avg(porcentaje_enfoque) as porcentaje_enfoque
                FROM `results` ');
                }
            }
            Log::info("El usuario ".auth()->user()->Usuario. " observa los evaluados");
            return view('evaluados', compact('evaluados', 'mejorResult', 'promedio'));
        } catch (\Throwable $th) {
            Log::error('Error al ver los evaluados '.$th->getMessage());
            return redirect()->back()->withErrors('Error al ver evaluados');
        }       
    }

    public function graficos(ResultsInscriptions $chart, InscritosCategorias $chart2, InscritosTerritorio $chart3, InscritosFases $chart4, InscritosFasesCategorias $chart5, NaturalezaJuridica $chart6, NivelComplejidad $chart7){
        if(auth()->user()->Tipo_Usuario==1){
        $cantidad=users_inscription::count('Codigorandom');
        Log::info("El usuario ".auth()->user()->Usuario. " observa las graficas");
        return view('Graficos', ['chart1' => $chart->build(),'chart2' => $chart2->build(), 'chart3' => $chart3->build(), 'chart4' => $chart4->build(), 'chart5' => $chart5->build(), 'chart6' => $chart6->build(), 'chart7' => $chart7->build(), 'cantidad'=>$cantidad]);
        }else{
            return redirect()->back();
        }
    }
}
