<?php
$Titulo = " Reportes de Tigres ";
include_once("../estructura/cabeceraBT.php");
include_once("../reporte/PesoxEspecie.php");
include_once("../reporte/TigresXEspecie.php");
?>

    <h1 class="h2">Demostracion Herramienta CharDirector</h1>

    <div class="row float-left">
    <div class="col-md-6 float-left">
    <div class="row">
    <?php echo $viewer_pie->renderHTML(); ?>
    </div>
    </div>
</div>

<div class="row float-right">
    <div class="col-md-6 float-right">
    <div class="row">
    
    <?php echo $viewer_bar->renderHTML(); ?>
    </div>

    </div>
</div>

<?php
include_once("../estructura/pieBT.php");
?>