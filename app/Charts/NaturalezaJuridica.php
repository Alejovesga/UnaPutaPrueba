<?php

namespace App\Charts;

use ArielMejiaDev\LarapexCharts\LarapexChart;

class NaturalezaJuridica
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\BarChart
    {
        return $this->chart->barChart()
            ->setTitle('Naturaleza jurídica')
            ->addData('Cantidad', [
                \App\Models\users_inscription::where('naturaleza_juridica','Publica')->count(),
                \App\Models\users_inscription::where('naturaleza_juridica','Privada')->count(),
                \App\Models\users_inscription::where('naturaleza_juridica','Mixta')->count(),
            ])
            ->setXAxis(['Publica', 'Privada', 'Mixta'])
            ->setFontFamily('Montserrat')
            ->setDataLabels(true);
    }
}
