<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Premio Calidad</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="{{asset('css/estilos.css')}}">
    <link rel="icon" type="image/x-icon" href="{{asset('premionacional.png')}}">
    <header>   
    <nav class="navbar navbar-expand-xxl navbar-light bg-light"> <a class="navbar-brand" href="https://premiocalidadaps.com.co/"><img src="{{asset('logominisalud.png')}}" alt=""></a>       
           
           <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent2"  aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
           </button>
       
       <div class="collapse navbar-collapse" id="navbarSupportedContent2">
       <ul class="navbar-nav mx-auto">
           <li class="nav-item mx-2 py-2 ">
           <button type="button" class="btn-an" style="background-color:#006799; color:white ">
           <a href="https://app.premiocalidadaps.com.co/Premio_nacional_OES/Evaluadores">home</a>
       </button>
       @if (auth()->user()->Tipo_Usuario==1)
           </li>
           <li class="nav-item mx-2 py-2">
           <button type="button" class="btn-an" style="background-color:#006799; color:white ">
           <a href="https://app.premiocalidadaps.com.co/Premio_nacional_OES/Evaluadores/register">Crear Usuario</a>
       </button>
           </li>
           @endif
           <li class="nav-item mx-2 py-2">
           <button type="button" class="btn-an" style="background-color:#006799; color:white ">
           <a href="https://app.premiocalidadaps.com.co/cambiocontrasena">Cambiar contrase??a</a>
           </button>
           </li>
           @if (auth()->user()->Tipo_Usuario==1)
                <li class="nav-item mx-2 py-2 ">
                <button type="button" class="btn-an" style="background-color:#006799; color:white ">
                <a href="https://app.premiocalidadaps.com.co/Premio_Nacional_OES/Evaluadores/consulta/show">Usuarios</a>
                </button>
            @endif
           </li>
           <li class="nav-item mx-2 py-2">
           <button type="button" class="btn-an" style="background-color:#006799; color:white ">
           <a href="https://app.premiocalidadaps.com.co/Premio_Nacional_OES/Evaluadores/consultaInscripcion">Inscripciones</a>
       </button>
           </li>
           @if (auth()->user()->Tipo_Usuario==1)
           <li class="nav-item mx-2 py-2">
           <button type="button" class="btn-an" style="background-color:#006799; color:white ">
           <a href="https://app.premiocalidadaps.com.co/Premio_nacional_OES/Evaluadores/respuesta">Preguntas</a>
           </button>
           </li> 
           <li class="nav-item mx-2 py-2">
                <button type="button" class="btn-an" style="background-color:#006799; color:white ">
                <a href="https://app.premiocalidadaps.com.co/Premio_nacional_OES/Evaluadores/analitica">Analitica Completa</a>
                </button>
                </li>
           @endif
           <li class="nav-item mx-2 py-2">
                <button type="button" class="btn-an" style="background-color:#006799; color:white ">
                <a href="https://app.premiocalidadaps.com.co/Premio_nacional_OES/Evaluadores/evaluados">Evaluados</a>
                </button>
                </li> 
           @auth
           <li class="nav-item mx-2 py-2">
           <button type="button" class="btn-an" style="background-color:#006799; color:white ">
           <a href="https://app.premiocalidadaps.com.co/logout">Cerrar sesi??n</a>
           </button>
           </li> 
           @endauth  
       </ul>  
   </div>
</nav>
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color:#205493!important; "> <a class="navbar-brand" href="#"><img src="{{asset('iconopremiopng.png')}}" alt="" style="width:width: 100%; max-width: 250px "></a>
        </nav>
        <script src="https://kit.fontawesome.com/782d75be0f.js" crossorigin="anonymous"></script>
    </header>
</head>
<body>
    <br><br>
    <div class="form-table">
        <center>
             <b>
                 <h3 style="color: #009FE3">Inscritos</h3>
             </b>
        </center>
        <br><br>
        @if (auth()->user()->Tipo_Usuario==1)
    <div class="table-filtros">
                <table class="table table-striped tabla-resp">
                <form action="/Premio_Nacional_OES/Evaluadores/consultaInscripcion" method="post">
                    @csrf
                    <tr>
                        <td>
                            <input type="text" name="nombreips" id="" placeholder="Nombre de ips" class="form-control">
                        </td>
                        <td>
                            <input type="submit" value="filtrar" name="filtrar" class="button-edit">
                        </td>
                </tr>
                <tr>
                        <td>
                            <input type="text" name="numeronit" id="" placeholder="NIT" class="form-control">
                        </td>
                        <td>
                            <input type="submit" value="filtrar" name="filtrar" class="button-edit">
                        </td>
                </tr>
                <tr>
                        <td>
                            <input type="text" name="Cinscripcion" id="" placeholder="Codigo de inscripcion" class="form-control">
                        </td>
                        <td>
                            <input type="submit" value="filtrar" name="filtrar" class="button-edit">
                        </td>
                    </tr>
                </form>
                <tr>                  
                </tr>
            </table>
    </div>
    @endif
    
   <br>  
   @if($errors->any())
                    <div class="alert alert-danger" role="alert">
                        {!! implode('', $errors->all('<h6 class="error">:message</h6>')) !!}
                    </div>
    @endif
    <div style="overflow-x:auto !important; ">
       <table class="table table-striped table-hover tabla-resp"> 
            
            <tr class="table-inscritos"> 
                <th >IPS</th>
                <th >NIT</th>         
                <th >Departamento</th>
                @if (auth()->user()->Tipo_Usuario==2 || auth()->user()->Tipo_Usuario==3)
                    <th>Municipio</th>
                    <th>Direccion</th>
                @endif
                <th >Director medico</th>
                <th >Telefono</th>
                <th >Email</th>
                @if (auth()->user()->Tipo_Usuario==1)
                <th>Asignar Evaluador</th>
                <th>Asignar</th>
                @endif
                <th>Evaluador</th>
                <th>Evaluaci??n</th>
                @if (auth()->user()->Tipo_Usuario==1)
                <th>Autorizar modificacion</th>
                <th>Codigo Inscripcion</th>
                @endif
                
             </tr>             
            @foreach ($datos as $inscrito)
            <tr class="table-inscritos">    
                <td>{{$inscrito->ips}}</td>       
                <td>{{$inscrito->nit}}</td>        
                <td>{{$inscrito->departamento}}</td>
                @if (auth()->user()->Tipo_Usuario==2 || auth()->user()->Tipo_Usuario==3)
                    <td>{{$inscrito->municipio}}</td>
                    <td>{{$inscrito->direccion}}</td>
                @endif       
                <td>{{$inscrito->director_medico}}</td>         
                <td>{{$inscrito->telefono}}</td>
                <td>{{$inscrito->email}}</td>  
                
                @if (auth()->user()->Tipo_Usuario==1)
                <td>
                    <form action="{{url('/Premio_Nacional_OES/inscripcion/'.$inscrito->id.'/update')}}" method="post">
                    @csrf              
                    <select name="Evaluador" id="Evaluador" class="form-select"> 
                        <option selected value="">..Seleccione..</option>
                        @foreach ($usuarios as $usuario)
                                <option value="{{$usuario->id}}" >{{$usuario->Usuario}}</option>
                        @endforeach
                        <option value="">No asignar</option>
                    </select>
                    <td>
                         <input type="submit" value="asignar" name="asignar" class="button-edit">  
                    </td>
                                    
                              
                    </form>
                </td>          
                @endif                
                <td>
                    {{$inscrito->Usuario}}
                </td>
                </td>                                      
                    <td>
                        <button class="button-edit">
                            <a href="{{url('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$inscrito->id.'/evaluaciones')}}">Evaluar</a>  
                        </button>                                                           
                    </td>
                    @if (auth()->user()->Tipo_Usuario==1)
                    <td>
                        <button class="button-edit">
                            <a href="{{url('/Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$inscrito->Codigorandom.'/autorizacion')}}">Autorizar</a>  
                        </button>                                                           
                    </td>
                    <td>
                        {{$inscrito->codigoRandom}}
                    </td>  
                    @endif       
            </tr>
             @endforeach   
    </table>
    </div>
    <br><br>
    
    </div>
    @if (auth()->user()->Tipo_Usuario==1)
    <center>
        <a href="/exportar" class="button-home-export">Exportar excel</a>
    </center>
    @endif
</body>
</html>