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
    <div id="axis" class="one">
         <img value="Menu" class="object van move-right" height="500" width="600" src="https://1.bp.blogspot.com/-ml4Hw4h1dHg/Xd6-NExWz1I/AAAAAAABVVM/TpGA0KyR32UUnl2mJvQs4vnUvpfIaV5sQCLcBGAsYHQ/s1600/cat-casagrande12-19.jpg"/>
    </div>

</asp:Content>

  
 