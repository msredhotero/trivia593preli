<?php

session_start();

if (!isset($_SESSION['usua_predio']))
{
    header('Location: ../index.html');
} else {

?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <title>Trivia Cerveza 593 La PreLi</title>
        <script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>

        <link rel="stylesheet" href="../css/jquery-ui.css">

		<script src="../js/jquery-ui.js"></script>
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
        <script src="../bootstrap/js/bootstrap.min.js"></script>

        <link rel="stylesheet" type="text/css" href="../css/estiloTribiaFinalizo.css"/>

        <link rel="stylesheet" href="../css/animate.min.css">

    </head>
    <body>

        <form role="form" class="form-horizontal">


        	<div class="row">
            <div class="col-md-3 col-xs-3 titulo3" align="right" style="text-align: right;">
               <button type="button" class="btn btn-default enjoy-css-buttom3" id="volver">VOLVER</button>
            </div>
            <div class="col-md-6 col-xs-6 titulo3" align="center" style="color:white; font-size:1.8em;">
               <p>FELICITACIONES <?php echo strtoupper( substr($_SESSION['nombre_predio'],0,25)); ?>!
ESCANEA EL CÓDIGO QR,
SÍGUENOS EN INSTAGRAM
Y COMPARTA CON TUS AMIGOS</p>
            </div>
            <div class="col-md-3 col-xs-3">
            </div>

        	</div>


<div class="footer">

        </div>


        <div class="footer">

        </div>


</form>


    <script type="text/javascript">



        $(document).ready(function(){
            $('#iniciar').click(function() {
                url = "../juego/";
                $(location).attr('href',url);
            });

            $("#myVideo").on('ended', function(){
         		alert('El video ha finalizado!!!');
         	});



            function wndsize(){
              var w = 0;var h = 0;
              //IE
              if(!window.innerWidth){
                if(!(document.documentElement.clientWidth == 0)){
                  //strict mode
                  w = document.documentElement.clientWidth;h = document.documentElement.clientHeight;
                } else{
                  //quirks mode
                  w = document.body.clientWidth;h = document.body.clientHeight;
                }
              } else {
                //w3c
                w = window.innerWidth;h = window.innerHeight;
              }
              return {width:w,height:h};
            }
            function wndcent(){
              var hWnd = (arguments[0] != null) ? arguments[0] : {width:0,height:0};
              var _x = 0;var _y = 0;var offsetX = 0;var offsetY = 0;
              //IE
              if(!window.pageYOffset){
                //strict mode
                if(!(document.documentElement.scrollTop == 0)){offsetY = document.documentElement.scrollTop;offsetX = document.documentElement.scrollLeft;}
                //quirks mode
                else{offsetY = document.body.scrollTop;offsetX = document.body.scrollLeft;}}
                //w3c
                else{offsetX = window.pageXOffset;offsetY = window.pageYOffset;}_x = ((wndsize().width-hWnd.width)/2)+offsetX;_y = ((wndsize().height-hWnd.height)/2)+offsetY;
                return{x:_x,y:_y};
            }
            var center = wndsize();

            if (center.width >= 1000) {
                $('.imgjuego').css('width','50%');
            }

            $( window ).resize(function() {
                if (center.width >= 1000) {
                    $('.imgjuego').css('width','50%');
                } else {
                    $('.imgjuego').css('width','55%');
                }
            });
        });/* fin del document ready */

    </script>


    </body>
</html>

<?php
}
?>
