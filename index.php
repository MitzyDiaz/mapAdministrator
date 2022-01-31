<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>


<div class="container" id="cont-primary">
  <div class="shadow-lg p-3 mb-5 bg-body rounded">
    <h2 id="title-form">Insertar Imagen</h2>
      <div class="container">
        <form action="" method="POST" enctype="multipart/form-data" id="form-registrar" class="needs-validation" novalidate>
            <div class="mb-3">
              <label class="form-label">Municipio</label>
              <select name="municipio" id="municipio" class="form-select" required>
                <option selected disabled value="">Escoge el municipio...</option>
                <?php
                    require_once('php/conexion.php');
                    $query_select="SELECT municipios.idMunicipio, municipios.nombreMunicipio FROM municipios";
                    $execute=mysqli_query($conexion, $query_select) or die(mysqli_error($conexion));
                    while($data=mysqli_fetch_array($execute)){
                    ?>
                    <option value="<?php echo $data['idMunicipio']?>"><?php echo $data['nombreMunicipio']?></option>
                    <?php
                    }
                    ?>
              </select>
              <div class="invalid-feedback">
                Por favor, seleccione un campo.
              </div>
            </div>

            <div class="mb-3">
              <label class="form-label">Descripción</label>
              <textarea name="desc" class="form-control" id="desc" placeholder="Inserte su descripción en el área de texto." required></textarea>
              <div class="invalid-feedback">
                Por favor, ingrese una descripción en el área de texto.
              </div>
            </div>

            <div class="mb-3">
              <label class="form-label">Imagen</label>
              <!--input type="file" name="foto" id="foto" class="form-control" onchange="vista_preliminar(event)" aria-label="file example" required accept="image/*" onBlur='LimitAttach(this,1);'-->
              <input type="file" name="foto" id="foto" class="form-control" onchange="vista_preliminar(event)" aria-label="file example" required>
              <div class="invalid-feedback">Por favor, selecciona un archivo</div>
            </div>

            <div id="div-img"><img src="" alt="" id="img-foto" width="500px"></div>
            <div class="d-grid gap-2">
            <button type="submit" name="btn-agregar" id="btn-agregar" class="btn btn-outline-primary">Agregar</button>
            </div>
        </form>
      <br>
      <div id="statusMsg"></div>
    </div>
  </div>
</div>

<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>

<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous "></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/funciones.js"></script>
<script>
(function () {
    'use strict'
    var forms = document.querySelectorAll('.needs-validation')
    Array.prototype.slice.call(forms)
      .forEach(function (form) {
        form.addEventListener('submit', function (event) {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }
          form.classList.add('was-validated')
        }, false)
      })
})(); 

$(document).ready(function(){
  $("#form-registrar").submit(insertarImg)

  function insertarImg(e){
    e.preventDefault();
    var datos = new FormData($("#form-registrar")[0]);
    $('#statusMsg').addClass('spinner-border text-secondary');
    $('#statusMsg').html('');
    $.ajax({
      url: 'php/funciones.php',
      type: 'POST',
      data: datos,
      contentType: false,
      processData: false,
      success: (datos) => {
        if (datos == "Información Registrada con éxito."){
          $('#statusMsg').removeClass();
          $("#statusMsg").html('');
          $('#statusMsg').addClass('alert alert-success d-flex align-items-center');
          $("#statusMsg").html('<div id="data">'+datos+'</div>');
          $('#data').before('<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>');
          $("#img-foto").attr("src","");
          $("#form-registrar")[0].reset();
          $('#form-registrar').removeClass('was-validated');
          setTimeout(function(){
            $('#statusMsg').removeClass();
            $("#statusMsg").html('');
          }, 3500);
        }
        else{
          $('#statusMsg').removeClass();
          $("#statusMsg").html('');
          $('#statusMsg').addClass('alert alert-danger d-flex align-items-center');
          $("#statusMsg").html('<div id="data">'+datos+'</div>');
          $('#data').before('<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>');
          setTimeout(function(){
            $('#statusMsg').removeClass();
            $("#statusMsg").html('');
          }, 3500);
        }
      }
    })
  }
})

$("#foto").change(function() {
    var file = this.files[0];
    var fileType = file.type;
    var match = ['image/jpeg', 'image/png', 'image/jpg'];
    if(!((fileType == match[0]) || (fileType == match[1]) || (fileType == match[2]) )){
      $('#statusMsg').removeClass("spinner-border");
      $('#statusMsg').addClass('alert alert-warning d-flex align-items-center');
      $("#statusMsg").html('<div id="data">Solo se permite subir archivos JPG, JPEG, & PNG.</div>');
      $('#data').before('<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Warning:"><use xlink:href="#exclamation-triangle-fill"/></svg>');
      setTimeout(function(){
        $('#statusMsg').removeClass("alert alert-warning");
        $("#statusMsg").html('');
      }, 2000);
      return false;
    }
});
</script>
</body>
</html>