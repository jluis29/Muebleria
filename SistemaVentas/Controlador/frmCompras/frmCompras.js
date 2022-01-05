
var table
var precio
$(document).ready(function () {
    cargarDatos();
    
});


function cargarDatos() {

    if ($.fn.DataTable.isDataTable('#tbCompras')) {
        $('#tbCompras').DataTable().destroy();
    }

    $('#tbCompras tbody').html('');

    var request = {
        usuario: {
            idUsuario: parseInt(localStorage.getItem('idUsuario'))
        }
    }

    AjaxPost("../frmCompras.aspx/Obtener", JSON.stringify(request),
        function (response) {
            $(".card-body").LoadingOverlay("hide");
                        if (response.estado) {
                            console.log("llegamos 12345", response);
                            $.each(response.objeto, function (i, row) {
                                $("<tr>").append(
                                    $("<td style='text-align: center;vertical-align: middle;font-size: 20px;'>").text(row.Nombre),
                                    $("<td style='text-align: center;vertical-align: middle;font-size: 20px;'>").text(row.Precio),
                                    $("<td style='text-align: center;vertical-align: middle;font-size: 20px;'>").text(row.Cantidad),
                                    $("<td style='text-align: center;vertical-align: middle;font-size: 20px;'>").text(row.Total),
                                    $("<td style='text-align: center;vertical-align: middle;font-size: 20px;'>").text(row.Fecha),
                                    $("<td  style='text-align: center;vertical-align: middle;'>").append(
                                        $("<img style='height: 200px; width: 300px;' src='Images/" + row.Imagen + "'>").addClass("card-img-top"),
                                 )
                                ).appendTo("#tbCompras tbody");

                            })
                        

                            table = $('#tbCompras').DataTable({
                            responsive: true
                        });
                    }
                  
            
        },
        function () {
            $(".modal-body").LoadingOverlay("hide");
        },
        function () {
            $(".modal-body").LoadingOverlay("show");
        })
}



function search(ele) {
    if (event.key === 'Enter') {
        console.log("El total es ", ele.value * $("#txtPrecio").val());
        $("#txtTotal").val(ele.value * $("#txtPrecio").val());
    }
}


