<?php

require_once('conexion.php');
error_reporting(0);
$desc = $_POST['desc'];
$municipio = $_POST['municipio'];
if(isset($_POST['municipio']) || isset($_POST['desc']) || isset($_FILES['foto']['name'])){
    if(!empty($municipio) && !empty($desc)) {
        if(!empty($_FILES["foto"]["name"])){
            $id_desc = mysqli_query($conexion,"SELECT Max(idDescripcion) FROM descripcion");
            $max = mysqli_fetch_array($id_desc);
            $cont = $max[0]+1;
            $nombre_imagen=$_FILES['foto']['name'];
            $temporal=$_FILES['foto']['tmp_name'];
            $carpeta='../img';
            $ruta=$carpeta.'/'.$municipio.'_'.$cont.'_'.$nombre_imagen;
            $fileType = pathinfo($ruta, PATHINFO_EXTENSION); 
            $allowTypes = array('jpg', 'png', 'jpeg');
            if(in_array($fileType, $allowTypes)){
                move_uploaded_file($temporal,$ruta);
                $query="INSERT INTO descripcion (idDescripcion, descripMunicipio, imgMunicipio, idMunicipio) VALUES (NULL,'$desc','$ruta', '$municipio')";
                $execute=mysqli_query($conexion,$query) or die(mysqli_error($conexion));
                if($execute) {
                    echo "Información Registrada con éxito.";
                }
                else{
                    echo "Hubo un error en tu carga de información, intente de nuevo.";
                }
            }
            else{
                echo "Solo se permite subir archivos JPG, JPEG, & PNG.";
            }
        }else {
            echo "Por favor, suba un archivo.";
        }
    }
    else{
        echo "No hay registros, llene los campos.";
    }
}
else{
    echo "Error al enviar registros, intente de nuevo.";
}