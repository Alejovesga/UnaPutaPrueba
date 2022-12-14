<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="{{asset('css/estilos.css')}}">
    <link rel="icon" type="image/x-icon" href="{{asset('premionacional.png')}}">
    <title>Premio calidad</title>
    <header>   
    <nav class="navbar navbar-expand-xxl navbar-light bg-light"> <a class="navbar-brand" href="https://premiocalidadaps.com.co/"><img src="{{asset('logominisalud.png')}}" alt=""></a>       
           
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent2"  aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent2">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item mx-2 py-2 ">
                <button type="button" class="btn-an" style="background-color:#006799; color:white" onclick="history.back()">
                    Atras        
                </button>
                </li>
                @if(auth()->user()->Tipo_Usuario==1)
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
                
                @if(auth()->user()->Tipo_Usuario==1)
                <li class="nav-item mx-2 py-2 ">
                <button type="button" class="btn-an" style="background-color:#006799; color:white ">
                <a href="https://app.premiocalidadaps.com.co/Premio_Nacional_OES/Evaluadores/consulta/show">Usuarios</a>
            </button>
                </li>
                @endif
                <li class="nav-item mx-2 py-2">
                <button type="button" class="btn-an" style="background-color:#006799; color:white ">
                <a href="https://app.premiocalidadaps.com.co/Premio_Nacional_OES/Evaluadores/consultaInscripcion">Inscripciones</a>
            </button>
                </li>
                @if(auth()->user()->Tipo_Usuario==1)
                <li class="nav-item mx-2 py-2">
                <button type="button" class="btn-an" style="background-color:#006799; color:white ">
                <a href="https://app.premiocalidadaps.com.co/Premio_nacional_OES/Evaluadores/respuesta">Preguntas</a>
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
        <center>
            <h1 style="color: #009FE3">Evaluaci??n de la inscripci??n {{$inscripcion->Codigorandom}}</h1>
        </center>
    
    
    <form action="{{url('Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$inscripcion->id.'/evaluacioncancer')}}" method="post">
    @csrf
    <table class="table table-striped container-table table-resp">
            <th class="table-eva">Evaluaci??n Detecci??n temprana de c??ncer</th> 
            <th></th>   
            <br>
            <tr>
                <td>
                  @if($errors->any())
                    
                            {!! implode('', $errors->all('<h6 class="error">:message</h6>')) !!}
                 @endif
                   
                Definir, ordenar e integrar las intervenciones colectivas e individuales y
                las acciones requeridas para intervenir a las personas con riesgo y/o con c??ncer de mama,
                cuello uterino y pr??stata, en donde las instituciones logren demostrar una implementaci??n del 70% de
                las directrices planteadas por el premio con un impacto demostrado en los resultados de salud,
                haciendo ??nfasis en el diagn??stico y detecci??n temprana, y su impacto como factor determinante en la sobrevida
                y en la disminuci??n de la mortalidad relacionada con c??ncer de mama, cuello uterino y pr??stata, prioritarios para el pa??s. 
                </td>
                <td></td>
           
            
            </tr>
            
            <tr>      
                    <th class="table-eva">ESTRUCTURA</th>
                    <th></th>
            </tr>      
    <tr>
        <th>Est??ndar 1</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==29)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
            <td></td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==29)                  
                    <b>C: </b>{{$rule->rule}} <br><br>                   
                    @endif                   
                @endforeach 
             </td>
             <td></td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==29)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerEstructura29" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->estructura == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerEstructura29') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    <br><br><br>
    <table class="table table-striped container-table table-resp">
    <br>
    <tr>
        <th>Est??ndar 2</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==30)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==30)                  
                    <?php $rule->rule = str_replace("\n", "<br><br/>", $rule->rule);
                    $rule->rule = str_replace("???", "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp???", $rule->rule);
                    $rule->rule = str_replace("\l", "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp??", $rule->rule);
                    echo "<b>C: </b>".$rule->rule; ?><br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==30)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerEstructura30" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->estructura2 == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerEstructura30') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    <br>
    <BR></BR>
    <table class="table table-striped container-table table-resp">   
            <th class="table-eva">Evaluaci??n Detecci??n temprana de c??ncer</th>  
            <th></th>  
            <br>
            
            <tr>      
                    <th class="table-eva">PROCESO</th>
                    <th></th>
            </tr>      
    <tr>
        <th>Est??ndar 1</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                    
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==31)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==31)                  
                    <?php $rule->rule = str_replace("\n", "<br><br/>", $rule->rule);
                    $rule->rule = str_replace("???", "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp???", $rule->rule);
                    echo "<b>C: </b>".$rule->rule; ?><br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==31)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerproceso31" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->proceso == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerproceso31') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    
    <br>
    <BR></BR>
    <table class="table table-striped container-table table-resp">   
            
            <br>   
    <tr>
        <th>Est??ndar 2</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==32)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==32)                  
                    <b>C: </b>{{$rule->rule}} <br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==32)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerproceso32" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->proceso2 == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerproceso32') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    
    <br>
    <BR></BR>

    <table class="table table-striped container-table table-resp">     
            <br>   
    <tr>
        <th>Est??ndar 3</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                   
                   
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==33)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==33)                  
                    <?php $rule->rule = str_replace("\n", "<br><br/>", $rule->rule);
                    $rule->rule = str_replace("???", "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp???", $rule->rule);
                    echo "<b>C: </b>".$rule->rule; ?> <br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==33)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerproceso33" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->proceso3 == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerproceso33') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    
    <br>
    <BR></BR>

    <table class="table table-striped container-table table-resp">     
            <br>   
    <tr>
        <th>Est??ndar 4</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==34)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==34)                  
                    <b>C: </b>{{$rule->rule}} <br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==34)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerproceso34" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->proceso4 == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerproceso34') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    <br><br><br>
    <table class="table table-striped container-table table-resp">   
            <th class="table-eva">Evaluaci??n Detecci??n temprana de c??ncer</th>  
            <th></th>  
            <br>
            
            <tr>      
                    <th class="table-eva">RESULTADO</th>
                    <th></th>
                    
            </tr>      
    <tr>
        <th>Est??ndar 1</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                  
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==35)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==35)                  
                    <?php $rule->rule = str_replace("\n", "<br><br/>", $rule->rule);
                    $rule->rule = str_replace("???", "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp???", $rule->rule);
                    echo "<b>C: </b>".$rule->rule; ?><br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==35)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerresultado35" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->resultado == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerresultado35') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    <br>
    <BR></BR>
    <table class="table table-striped container-table table-resp">   
                
    <tr>
        <th>Est??ndar 2</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                  
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==36)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==36)                  
                    <?php $rule->rule = str_replace("\n", "<br><br/>", $rule->rule);
                    $rule->rule = str_replace("???", "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp???", $rule->rule);
                    echo "<b>C: </b>".$rule->rule; ?> <br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==36)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerresultado36" value="{{$scale->valor}}"  @foreach ($is as $i) {{ $i->resultado2 == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerresultado36') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    <br><br><br>

    <table class="table table-striped container-table table-resp">     
            <br>   
    <tr>
        <th>Est??ndar 3</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                   
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==37)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==37)                  
                    <?php $rule->rule = str_replace("\n", "<br><br/>", $rule->rule);
                    $rule->rule = str_replace("???", "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp???", $rule->rule);
                    echo "<b>C: </b>".$rule->rule; ?><br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==37)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerresultado37" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->resultado3 == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerresultado37') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>
    <br><br><br>


    <table class="table table-striped container-table table-resp">     
            <br>   
    <tr>
        <th>Est??ndar 4</th> 
        <th></th>
    </tr>
    <tr>
            <td>
                    
                    @foreach ($recommendations as $recommendation)
                            
                            @if ($recommendation->id==38)
                                &bull;{{$recommendation->recommendation}}
                            @endif                                          
                    @endforeach           
            </td>
    </tr>
    <tr>
        <th>Criterios</th>
        <th></th>
    </tr>
    <tr>    
            <td>           
                @foreach ($rules as $rule)                     
                    @if ($rule->recommendation==38)                  
                    <b>C: </b>{{$rule->rule}} <br><br>                   
                    @endif                   
                @endforeach 
             </td>
    </tr>

    <tr>
        <th>
           Evaluaci??n
        </th>
        <th></th>
    </tr>
     @foreach ($scales as $scale)
    <tr> 
       @if ($scale->recommendation==38)
        <td> 
            {{$scale->scale}}
        </td>
        <td>
            <input type="radio" name="scalecancerresultado38" value="{{$scale->valor}}" @foreach ($is as $i) {{ $i->resultado4 == "$scale->valor" ? 'checked' : ''}}  @endforeach {{ old('scalecancerresultado38') == "$scale->valor" ? 'checked' : '' }}> 
        </td>
       @endif
         
    @endforeach 
</tr>   
    </table>  
    <br><br><br>
    <input type="hidden" name="codigoUsuario" value="{{$inscripcion->Codigorandom}}">
    <input type="hidden" name="category" value="3">
    <center>
        <button type="button" class="button-edit" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Enviar y guardar
        </button>
        <button type="button" class="button-edit" data-bs-toggle="modal" data-bs-target="#exampleModal2">
            salvar
        </button>
    </center>
    

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enviar evaluaci??n</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ??Seguro que desea enviar la evaluaci??n?
        Una vez enviada no se podr??n hacer modificaciones.
      </div>
      <div class="modal-footer">
        <input type="submit" value="Enviar y guardar" name="Enviar" class="button-edit" formaction="{{url('Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$inscripcion->id.'/evaluacioncancer')}}">
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Salvar evaluaci??n</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ??Seguro que desea salvar la evaluaci??n?
      </div>
      <div class="modal-footer">
      <input type="submit" value="salvar" class="button-edit" name="Enviar" formaction="{{url('Premio_nacional_OES/Evaluadores/consultaInscripcion/'.$inscripcion->id.'/salvarevaluacioncancer')}}">
      </div>
    </div>
  </div>
</div>
</form>
</body>
</html>