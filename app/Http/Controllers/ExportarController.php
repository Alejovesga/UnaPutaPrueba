<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\users_inscription;
use App\Exports\UserInscriptionExport;
use App\Exports\EvaluadosExport;
use Excel;
use Illuminate\Support\Facades\Log;
class ExportarController extends Controller
{
    public function exportar(){
        Log::info("Se hace exportacion a Excel de inscritos por el usuario: ".auth()->user()->Usuario);
        return Excel::download(new UserInscriptionExport, 'users_inscription.xlsx');
    }

    public function exportarEvaluados(){
        Log::info("Se hace exportacion a Excel de los evaluados por el usuario: ".auth()->user()->Usuario);
        return Excel::download(new EvaluadosExport, 'evaluados.xlsx');
    }
}
