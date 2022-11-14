<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Result extends Model
{
    use HasFactory;


    protected $fillable = [
        'porcentaje_estructura_perinatal',
        'porcentaje_proceso_perinatal',
        'porcentaje_resultado_perinatal',
        'porcentaje_estructura_cardio',
        'porcentaje_proceso_cardio',
        'porcentaje_resultado_cardio',
        'porcentaje_estructura_cancer',
        'porcentaje_proceso_cancer	',
        'porcentaje_resultado_cancer',
        'porcentaje_estructura_enfoque',
        'porcentaje_proceso_enfoque',
        'porcentaje_resultado_enfoque',
        'PorcentajeEstructura',
        'PorcentajeProceso',
        'PorcentajeResultado',
        'porcentaje_perinatal',
        'porcentaje_cardio',
        'porcentaje_cancer',
        'porcentaje_enfoque',
        'PorcentajeTotal'
        ,'User',
        'Cinturon',

    ];


    public static function getEvaluados(){
        $datos=DB::select('SELECT ui.ips, ui.nit, m.municipio, d.departamento, u.Usuario,`User`, 
        `Cinturon`,`porcentaje_estructura_perinatal`, `porcentaje_proceso_perinatal`, `porcentaje_resultado_perinatal`, 
        `porcentaje_estructura_cardio`, `porcentaje_proceso_cardio`, `porcentaje_resultado_cardio`, `porcentaje_estructura_cancer`,
         `porcentaje_proceso_cancer`, `porcentaje_resultado_cancer`, `porcentaje_estructura_enfoque`, `porcentaje_proceso_enfoque`, 
         `porcentaje_resultado_enfoque`, `PorcentajeEstructura`, `PorcentajeProceso`, `PorcentajeResultado`, `porcentaje_perinatal`, 
         `porcentaje_cardio`, `porcentaje_cancer`, `porcentaje_enfoque`, `PorcentajeTotal`, r.`updated_at`
        FROM `results` r
        inner join users_inscriptions ui on ui.Codigorandom=r.User
        inner join users u on u.id=ui.Evaluador
        inner join municipios m on m.id = ui.municipio
        inner join departamentos d on d.id=m.id_departamento
        order by r.PorcentajeTotal Desc');
        return $datos;
    }
}
