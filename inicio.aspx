<%@ Page Title="" Language="C#" MasterPageFile="~/masterP.master" AutoEventWireup="true" CodeFile="inicio.aspx.cs" Inherits="inicio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
            <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <title>Sign In</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/estilos.css" rel="stylesheet" />

    </head>
<body>
      


        <div class="container">
            <div class="form-horizontal">
              <br /><br />  
                <br />
                <br />
                <h2>Entrar a mi cuenta de World Airlenes</h2>
                <p>&nbsp;</p>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="*Numero worldKey o nombre de usuario"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usuario" Display="Dynamic" ErrorMessage="Debe ingresar el usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    <div class="col-md-3">
                        <asp:TextBox ID="usuario" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Contraseña"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" Display="Dynamic" ErrorMessage="Debe ingresar la contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                    <div class="col-md-3">
                        <asp:TextBox ID="pass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                       
                    </div>
                </div>
                <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Recordar mis credenciales"></asp:Label>
                    </div>
                </div>
                 <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:Button ID="Button2" runat="server" Text="Iniciar Sesión" CssClass="btn btn-default"/> 
                       
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="registronuevo.aspx" CausesValidation="False">Registrarme</asp:LinkButton>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        </div>
                </div>
            </div>
        </div>
    



     <hr />



    <script src="js/bootstrap.min.js"></script>
</body>
</html>
</asp:Content>

