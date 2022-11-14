<?php

namespace App\Charts;

use ArielMejiaDev\LarapexCharts\LarapexChart;

class NivelComplejidad
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\PieChart
    {
        return $this->chart->pieChart()
            ->setTitle('Nivel de complejidad')
            ->addData([
                \App\Models\users_inscription::where('nivel_complejidad','Baja')->count(),
                \App\Models\users_inscription::where('nivel_complejidad','Mediana')->count(),
            ])
            ->setLabels(['Baja', 'Mediana'])
            ->setFontFamily('Montserrat')
            ->setDataLabels(true);
    }
}
