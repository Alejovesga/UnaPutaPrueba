<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\Models\ScalesUser;
use App\Models\Result;
use Illuminate\Support\Facades\DB;

class ResultRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'scaleUser'=>'unique:results'
        ];
    }

    public function getResultPerinatal($Codigorandom){
        if (DB::table('users_inscriptions')->where('atencion_infantil', 'si')->where('Codigorandom', $Codigorandom)->exists()) {
        $evaluadosPerinatal=ScalesUser::where('codigoUsuario', $Codigorandom)->where('category',1)->where('completado',1)->get();
        foreach($evaluadosPerinatal as $evalp){       
                              
            $porcentajeestructuraperinatal=round(((($evalp->estructura+$evalp->estructura2)*100)/10)*0.10,2);
            $porcentajeprocesoperinatal=round(((($evalp->proceso+$evalp->proceso2+$evalp->proceso3+$evalp->proceso4+$evalp->proceso5+$evalp->proceso6)*100)/30)*0.10,2);
            $porcentajeresultadoperinatal=round(((($evalp->resultado+$evalp->resultado2+$evalp->resultado3+$evalp->resultado4+$evalp->resultado5)*100)/25)*0.05,2);
            $porcentajeperinatal=$porcentajeestructuraperinatal+$porcentajeprocesoperinatal+$porcentajeresultadoperinatal;
            
            return[
                'porcentaje_estructura_perinatal'=>$porcentajeestructuraperinatal,
                'porcentaje_proceso_perinatal'=>$porcentajeprocesoperinatal,
                'porcentaje_resultado_perinatal'=>$porcentajeresultadoperinatal,
                'porcentaje_perinatal'=>$porcentajeperinatal,
            ];           
        }
    }else{
        $porcentajeestructuraperinatal=0;
        $porcentajeprocesoperinatal=0;
        $porcentajeresultadoperinatal=0;
        $porcentajeperinatal=0;
        return[
            'porcentaje_estructura_perinatal'=>$porcentajeestructuraperinatal,
            'porcentaje_proceso_perinatal'=>$porcentajeprocesoperinatal,
            'porcentaje_resultado_perinatal'=>$porcentajeresultadoperinatal,
            'porcentaje_perinatal'=>$porcentajeperinatal,
        ];    
    }
        
    }

    public function getResultCardio($Codigorandom){
        if (DB::table('users_inscriptions')->where('deteccion_temprana_enfermedades_cardiovasculares', 'si')->where('Codigorandom', $Codigorandom)->exists()) {
        $evaluadosCardio=ScalesUser::where('codigoUsuario', $Codigorandom)->where('category',2)->where('completado',1)->get();
        foreach($evaluadosCardio as $evalcar){       
                              
            $porcentajeestructuracardio=round(((($evalcar->estructura+$evalcar->estructura2)*100)/10)*0.10,2);
            $porcentajeprocesocardio=round(((($evalcar->proceso+$evalcar->proceso2+$evalcar->proceso3+$evalcar->proceso4+$evalcar->proceso5+$evalcar->proceso6+$evalcar->proceso7+$evalcar->proceso8+$evalcar->proceso9)*100)/45)*0.10,2);
            $porcentajeresultadocardio=round(((($evalcar->resultado+$evalcar->resultado2+$evalcar->resultado3+$evalcar->resultado4)*100)/20)*0.05,2);
            $porcentajecardio=$porcentajeestructuracardio+$porcentajeprocesocardio+$porcentajeresultadocardio;
            
            return[
               'porcentaje_estructura_cardio'=>$porcentajeestructuracardio,
               'porcentaje_proceso_cardio'=>$porcentajeprocesocardio,
               'porcentaje_resultado_cardio'=>$porcentajeresultadocardio,
               'porcentaje_cardio'=>$porcentajecardio,
            ];
                           
        }
    }else{
        $porcentajeestructuracardio=0;
        $porcentajeprocesocardio=0;
        $porcentajeresultadocardio=0;
        $porcentajecardio=0;
        return[
            'porcentaje_estructura_cardio'=>$porcentajeestructuracardio,
            'porcentaje_proceso_cardio'=>$porcentajeprocesocardio,
            'porcentaje_resultado_cardio'=>$porcentajeresultadocardio,
            'porcentaje_cardio'=>$porcentajecardio,
         ];
    }
    }
    public function getResultCancer($Codigorandom){
        if (DB::table('users_inscriptions')->where('procesos_atencion_deteccion_temprana_cancer', 'si')->where('Codigorandom', $Codigorandom)->exists()) {
        $evaluadosCancer=ScalesUser::where('codigoUsuario', $Codigorandom)->where('category',3)->where('completado',1)->get();
        foreach($evaluadosCancer as $evalcan){       
                              
            $porcentajeestructuracancer=round(((($evalcan->estructura+$evalcan->estructura2)*100)/10)*0.10,2);
            $porcentajeprocesocancer=round(((($evalcan->proceso+$evalcan->proceso2+$evalcan->proceso3+$evalcan->proceso4)*100)/20)*0.10,2);
            $porcentajeresultadocancer=round(((($evalcan->resultado+$evalcan->resultado2+$evalcan->resultado3+$evalcan->resultado4)*100)/20)*0.05,2);
            $porcentajecancer=$porcentajeestructuracancer+$porcentajeprocesocancer+$porcentajeresultadocancer;
            
            return[
                'porcentaje_estructura_cancer'=>$porcentajeestructuracancer,
                'porcentaje_proceso_cancer'=>$porcentajeprocesocancer,
                'porcentaje_resultado_cancer'=>$porcentajeresultadocancer,
                'porcentaje_cancer'=>$porcentajecancer,
            ];          
        }
    }else{
        $porcentajeestructuracancer=0;
        $porcentajeprocesocancer=0;
        $porcentajeresultadocancer=0;
        $porcentajecancer=0;
        return[
            'porcentaje_estructura_cancer'=>$porcentajeestructuracancer,
            'porcentaje_proceso_cancer'=>$porcentajeprocesocancer,
            'porcentaje_resultado_cancer'=>$porcentajeresultadocancer,
            'porcentaje_cancer'=>$porcentajecancer,
        ];
    }
    }
    public function getResultEnfoque($Codigorandom){
        if (DB::table('users_inscriptions')->where('enfoque_diferencial_procesos_atencion', 'si')->where('Codigorandom', $Codigorandom)->exists()) {
        $evaluadosEnfoque=ScalesUser::where('codigoUsuario', $Codigorandom)->where('category',4)->where('completado',1)->get();
        foreach($evaluadosEnfoque as $evalen){       
                              
            $porcentajeestructuraenfoque=round(((($evalen->estructura+$evalen->estructura2+$evalen->estructura3)*100)/15)*0.10,2);
            $porcentajeprocesoenfoque=round(((($evalen->proceso+$evalen->proceso2)*100)/10)*0.10,2);
            $porcentajeresultadoenfoque=round(((($evalen->resultado)*100)/5)*0.05,2);
            $porcentajeenfoque=$porcentajeestructuraenfoque+$porcentajeprocesoenfoque+$porcentajeresultadoenfoque;
            
            return[
                'porcentaje_estructura_enfoque'=>$porcentajeestructuraenfoque,
                'porcentaje_proceso_enfoque'=>$porcentajeprocesoenfoque,
                'porcentaje_resultado_enfoque'=>$porcentajeresultadoenfoque,
                'porcentaje_enfoque'=>$porcentajeenfoque,
            ];
                            
        }

    }else{
        $porcentajeestructuraenfoque=0;
        $porcentajeprocesoenfoque=0;
        $porcentajeresultadoenfoque=0;
        $porcentajeenfoque=0;
        return[
                'porcentaje_estructura_enfoque'=>$porcentajeestructuraenfoque,
                'porcentaje_proceso_enfoque'=>$porcentajeprocesoenfoque,
                'porcentaje_resultado_enfoque'=>$porcentajeresultadoenfoque,
                'porcentaje_enfoque'=>$porcentajeenfoque,
        ];
    }
    }

    public function getResultTotal($Codigorandom){
            $resultadot=Result::where('User',$Codigorandom)->get();
            foreach($resultadot as $rt){
                $PorcentajeEstructura=$rt->porcentaje_estructura_perinatal+$rt->porcentaje_estructura_cardio+$rt->porcentaje_estructura_cancer+$rt->porcentaje_estructura_enfoque;
                $PorcentajeProceso=$rt->porcentaje_proceso_perinatal+$rt->porcentaje_proceso_cardio+$rt->porcentaje_proceso_cancer+$rt->porcentaje_proceso_enfoque;
                $PorcentajeResultado=$rt->porcentaje_resultado_perinatal+$rt->porcentaje_resultado_cardio+$rt->porcentaje_resultado_cancer+$rt->porcentaje_resultado_enfoque;
                $PorcentajeTotal=$rt->porcentaje_perinatal+$rt->porcentaje_cardio+$rt->porcentaje_cancer+$rt->porcentaje_enfoque;
                if($PorcentajeTotal>=0 && $PorcentajeTotal<=30.99){
                    $cinturon='Blanco';
                }else if($PorcentajeTotal>=31.00 && $PorcentajeTotal<=49.99){
                    $cinturon='Amarillo';
                }else if($PorcentajeTotal>=50.00 && $PorcentajeTotal<=70.99){
                    $cinturon='Verde';
                }else if($PorcentajeTotal>=71.00 && $PorcentajeTotal<=100.00){
                    $cinturon='Negro';
                }
                return[
                         'PorcentajeEstructura'=> $PorcentajeEstructura,
                         'PorcentajeProceso'=>$PorcentajeProceso,
                         'PorcentajeResultado'=>$PorcentajeResultado,
                         'PorcentajeTotal'=>$PorcentajeTotal,
                         'Cinturon'=>$cinturon,
                ]; 
        }
    }
}