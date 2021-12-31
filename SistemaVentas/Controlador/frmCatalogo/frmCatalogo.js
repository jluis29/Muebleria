
var table
$(document).ready(function () {
    cargarDatos();
    
});


function cargarDatos() {

    if ($.fn.DataTable.isDataTable('#tbProducto')) {
        $('#tbProducto').DataTable().destroy();
    }

    $('#tbProducto tbody').html('');

    AjaxGet("../frmCatalogo.aspx/Obtener",
        function (response) {
            $(".card-body").LoadingOverlay("hide");
            if (response.estado) {

                $.each(response.objeto, function (i, row) {
                    $("<tr>").append(                      
                        $("<td>").text(row.Nombre),
                        $("<td>").text(row.Descripcion),                
                        $("<td>").text(row.Precio),
                        $("<td>").append(
                            $("<img style='height: 200px; width: 300px;' src='Images/"+row.Imagen+"'>").addClass("card-img-top"),
                            $("<button>").addClass("btn btn-sm btn-primary mr-1").text("Comprar").data("producto", row)                       
                        )
                    ).appendTo("#tbProducto tbody");

                })
            }

            table = $('#tbProducto').DataTable({
                responsive: true
            });
        },
        function () {
            $(".card-body").LoadingOverlay("hide");
        },
        function () {
            $(".card-body").LoadingOverlay("show");
        })
}




