<?php

namespace App\Charts;

use ArielMejiaDev\LarapexCharts\LarapexChart;

class InscritosCategorias
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\BarChart
    {
        return $this->chart->barChart()
            ->setTitle('Procesos de atención APS')
            ->addData('si', [
                \App\Models\users_inscription::where('atencion_infantil','si')->count(),
                \App\Models\users_inscription::where('deteccion_temprana_enfermedades_cardiovasculares', 'si')->count(),
                \App\Models\users_inscription::where('procesos_atencion_deteccion_temprana_cancer', 'si')->count(),
                \App\Models\users_inscription::where('enfoque_diferencial_procesos_atencion', 'si')->count(),
            ])
            ->addData('No', [
                \App\Models\users_inscription::where('atencion_infantil','no')->count(),
                \App\Models\users_inscription::where('deteccion_temprana_enfermedades_cardiovasculares', 'no')->count(),
                \App\Models\users_inscription::where('procesos_atencion_deteccion_temprana_cancer', 'no')->count(),
                \App\Models\users_inscription::where('enfoque_diferencial_procesos_atencion', 'no')->count(),
            ])
            ->setXAxis(['Atencion Materno Perinatal', 'Det. enf. cardiovasculares', 'Det. temprana cancer','Enfoque diferencial'])
             ->setFontFamily('Montserrat')
             ->setDataLabels(true);
    }
}
