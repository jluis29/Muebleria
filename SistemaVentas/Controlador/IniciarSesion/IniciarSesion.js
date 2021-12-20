
$('#btnIniciarSesion').click(function () {
    AjaxPost("../IniciarSesion.aspx/Iniciar", JSON.stringify({ Usuario: $("#username").val(), Clave: $("#password").val()}),
        function (response) {
            $.LoadingOverlay("hide");
            console.log("la respuesta es :",response);
            if (response.estado) {
                window.location.href = 'Inicio.aspx';
            } else {
                swal("oops!", "No se encontro el usuario", "warning")
                console.log("No se encontro el usuario");
            }
        },
        function () {
            $.LoadingOverlay("hide");
        },
        function () {
            $.LoadingOverlay("show");
        })
});
