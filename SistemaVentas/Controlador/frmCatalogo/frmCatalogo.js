
var table
var precio
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
                console.log("llegamos 12345", response);
                $.each(response.objeto, function (i, row) {
                    $("<tr>").append(                      
                        $("<td style='text-align: center;vertical-align: middle;font-size: 20px;'>").text(row.Nombre),
                        $("<td style='text-align: center;vertical-align: middle;font-size: 20px;'>").text(row.Descripcion),
                        $("<td style='text-align: center;vertical-align: middle;font-size: 20px;'>").text(row.Precio),
                        $("<td  style='text-align: center;vertical-align: middle;'>").append(
                            $("<img style='height: 200px; width: 300px;' src='Images/"+row.Imagen+"'>").addClass("card-img-top"),
                            $("<button style='margin-left: 50px;font-size: 20px;'>").addClass("btn btn-sm btn-primary mr-1").text("Adquirir").data("compras", row),
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



function search(ele) {
    if (event.key === 'Enter') {
        console.log("El total es ", ele.value * $("#txtPrecio").val());
        $("#txtTotal").val(ele.value * $("#txtPrecio").val());
    }
}

$('#tbProducto tbody').on('click', 'button[class="btn btn-sm btn-primary mr-1"]', function () {

    var model = $(this).data("compras")

    console.log('model', model);

    $("#txtNombre").val(model.Nombre);
    $("#txtDescripcion").val(model.Descripcion);
    $("#txtPrecio").val(model.Precio);

    localStorage.setItem('idProducto', model.IdProducto);

    $("#txtCantidad").val('');
    $("#txtTotal").val(0);
    $('img#imagen').attr('src', "Images/" + model.Imagen);

    $('#modalCompra').modal('show');
})


$('#btnGuardarCompra').on('click', function () {
    var camposvacios = false;
    var fields = $(".model").serializeArray();


    $.each(fields, function (i, field) {
        if (!field.value) {
            camposvacios = true;
            return false;
        }
    });

    if (!camposvacios) {

        var request = {
            compras: {
                idUsuario: parseInt(localStorage.getItem('idUsuario')),
                idProducto: parseInt(localStorage.getItem('idProducto')),
                cantidad: parseInt($("#txtCantidad").val()),
                precio: parseInt($("#txtPrecio").val()),
                total: parseInt($("#txtTotal").val()),
            }
        }


        console.log("request", request);

        console.log("request1", parseInt($("#txtTotal").val()));
        console.log("request2", parseInt(localStorage.getItem('monto')));

        


        if (parseInt($("#txtTotal").val()) <= parseInt(localStorage.getItem('monto'))){


            AjaxPost("../frmCatalogo.aspx/Comprar", JSON.stringify(request),
                function (response) {
                    $(".modal-body").LoadingOverlay("hide");
                    if (response.estado) {
                        cargarDatos();
                        $('#modalCompra').modal('hide');
                        swal("Mensaje", "Se Realizo la Compra Correctamente", "success");
                    } else {
                        swal("oops!", "No se pudo editar el rol", "warning")
                    }
                },
                function () {
                    $(".modal-body").LoadingOverlay("hide");
                },
                function () {
                    $(".modal-body").LoadingOverlay("show");
                })

            

        }
        else {
            swal("Mensaje", "Es Total sobrepasa al Saldo", "warning");
        }

    }
       
     else {
        swal("Mensaje", "Es necesario completar todos los campos", "warning");
        }

})


