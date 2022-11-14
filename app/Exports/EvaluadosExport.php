<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use App\Models\users_inscription;
use App\Models\Result;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EvaluadosExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */

    public function headings():array{
        return[
            'IPS',
            'NIT',
            'Municipio',
            'Departamento',
            'Evaluador',
            'Codigo Inscripcion',
            'Cinturon',
            'Porcentaje estructura Materno Perinatal',	
            'Porcentaje proceso Materno Perinatal',
            'Porcentaje resultado Materno Perinatal',	
            'Porcentaje estructura Deteccion enfermedades Cardiovasculares',
            'Porcentaje proceso Deteccion enfermedades Cardiovasculares',	
            'Porcentaje resultado Deteccion enfermedades Cardiovasculares',	
            'Porcentaje estructura Deteccion temprana de cancer',	
            'Porcentaje proceso Deteccion temprana de cancer',	
            'Porcentaje resultado Deteccion temprana de cancer',	
            'Porcentaje estructura Enfoque Diferencial',	
            'Porcentaje proceso Enfoque Diferencial',	
            'Porcentaje resultado Enfoque Diferencial',	
            'Porcentaje Total Estructura',	
            'Porcentaje Total Proceso',	
            'Porcentaje Total Resultado',	
            'Porcentaje Total Materno Perinatal',	
            'Porcentaje Total Deteccion enfermedades Cardiovasculares',	
            'Porcentaje Total Deteccion temprana de cancer',	
            'Porcentaje Total Enfoque Diferencial',	
            'Porcentaje Total de la evaluacion',
            'Fecha evaluado',
        ];
    }

    public function collection()
    {
        return collect(Result::getEvaluados());
    }
}
