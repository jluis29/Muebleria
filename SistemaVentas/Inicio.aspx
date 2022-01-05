<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SistemaVentas.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<style>
.contenedor:hover .imagen {-webkit-transform:scale(1.3);transform:scale(1.3);}
.contenedor {overflow:hidden;}

.object {
  position: absolute;
}
.van {
    top: 45%;
    left: 44%;
}
#axis:hover .move-right{
    transform: translate(350px,0);
    -webkit-transform: translate(350px,0); /** Chrome & Safari **/
    -o-transform: translate(350px,0); /** Opera **/
    -moz-transform: translate(350px,0); /** Firefox **/
}

.object {
    position: absolute;
    transition: all 2s ease-in-out;
    -webkit-transition: all 2s ease-in-out; /** Chrome & Safari **/
    -moz-transition: all 2s ease-in-out; /** Firefox **/
    -o-transition: all 2s ease-in-out; /** Opera **/
}

</style>



<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block" style=" width: 100%;height: 913px;" src="https://1.bp.blogspot.com/-ml4Hw4h1dHg/Xd6-NExWz1I/AAAAAAABVVM/TpGA0KyR32UUnl2mJvQs4vnUvpfIaV5sQCLcBGAsYHQ/s1600/cat-casagrande12-19.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block " style=" width: 100%;height: 913px;" src="https://1.bp.blogspot.com/-ml4Hw4h1dHg/Xd6-NExWz1I/AAAAAAABVVM/TpGA0KyR32UUnl2mJvQs4vnUvpfIaV5sQCLcBGAsYHQ/s1600/cat-casagrande12-19.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block " style=" width: 100%;height: 913px" src="https://1.bp.blogspot.com/-ml4Hw4h1dHg/Xd6-NExWz1I/AAAAAAABVVM/TpGA0KyR32UUnl2mJvQs4vnUvpfIaV5sQCLcBGAsYHQ/s1600/cat-casagrande12-19.jpg" alt="Third slide">
    </div>
      <div class="carousel-item">
      <img class="d-block " style=" width: 100%;height: 913px" src="https://1.bp.blogspot.com/-ml4Hw4h1dHg/Xd6-NExWz1I/AAAAAAABVVM/TpGA0KyR32UUnl2mJvQs4vnUvpfIaV5sQCLcBGAsYHQ/s1600/cat-casagrande12-19.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>



</asp:Content>

  
 