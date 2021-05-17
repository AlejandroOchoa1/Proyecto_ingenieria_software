<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_ingenieria_software.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>:: Iniciar sesión ::</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet">
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" panel panel-default" style="margin-bottom: 10px; margin-top: 10px; margin-left: 10px; margin-right: 10px;">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtUsuario" class="form-label">Usuario</label>
                            <asp:TextBox class="form-control" ID="txtUsuario" runat="server" AutoCompleteType="None"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtContrasenia" class="form-label">Contraseña</label>
                            <asp:TextBox runat="server" type="password" class="form-control" ID="txtContrasenia" AutoCompleteType="None"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 50px;">
                        <div class="col-sm-12">
                            <asp:Button runat="server" id="btnIniciarSesion" class="btn btn-block btn-outline-success" Text="Iniciar sesión" OnClick="btnIniciarSesion_Click"></asp:Button>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 50px;">
                        <div class="col-sm-12">
                            <asp:Button runat="server" id="btnRegistrarse" class="btn btn-block btn-outline-info" Text="Registrarse" OnClick="btnRegistrarse_Click"></asp:Button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
    </form>
</body>
</html>
