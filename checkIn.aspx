<%@ Page Title="" Language="C#" MasterPageFile="~/masterP.master" AutoEventWireup="true" CodeFile="checkIn.aspx.cs" Inherits="checkIn" %>

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
                <h5 style="text-align: center"><span class="breadCrumbSmallFont">REALICE SU CHECK-IN AQUÍ DENTRO DE LAS 24&nbsp;HORAS DE SU SALIDA Y AHORRE TIEMPO EN EL AEROPUERTO</span></h5>
                <p>&nbsp;</p>
                <div class="form-group" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="Numero de confirmacion" Width="170px" OnClick="Button1_Click" CausesValidation="False" />
                    <asp:Button ID="Button2" runat="server" Text="Numero de Boleto" Width="170px" OnClick="Button2_Click" CausesValidation="False" />
                    <asp:Button ID="Button3" runat="server" Text="Numero de tarjeta debito/credito" Width="236px" CausesValidation="False" OnClick="Button3_Click" />
                    
                </div>
             
                <hr />

            <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:Panel ID="Panel4" runat="server">
                            <asp:Label ID="Label1" runat="server" Text="Seleccionar opcion"></asp:Label>
                        </asp:Panel>
                           </div>
                </div>

                 <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:Panel ID="Panel1" runat="server">
                            <table align="center" style="width: 58%;">
                                <tr>
                                    <td style="height: 22px; width: 182px">Numero de confirmacion</td>
                                    <td style="height: 22px; width: 390px">
                                        <asp:TextBox ID="txtconfirmacion" runat="server" MaxLength="6" Width="188px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtconfirmacion" Display="Dynamic" ErrorMessage="Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtconfirmacion" Display="Dynamic" ErrorMessage="Solo valores numericos" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 182px">Aeropuerto de salida</td>
                                    <td style="width: 390px">
                                        <asp:TextBox ID="txtAero1" runat="server" Width="188px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAero1" Display="Dynamic" ErrorMessage="Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 182px; height: 20px"></td>
                                    <td style="height: 20px; width: 390px">
                                        <asp:Button ID="Button4" runat="server" Text="Buscar" Width="127px" OnClick="Button4_Click" />
                                    </td>
                                </tr>
                            </table>


                        </asp:Panel>
                           </div>
                </div>

                 <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:Panel ID="Panel3" runat="server">

                            <table style="width: 66%;" align="center">
                                <tr>
                                    <td style="height: 20px; width: 209px">Numero de tarjeta de credito</td>
                                    <td style="height: 20px">
                                        <asp:TextBox ID="txtTarjeta" runat="server" Width="191px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTarjeta" Display="Dynamic" ErrorMessage="Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTarjeta" Display="Dynamic" ErrorMessage="Solamente numeros" ForeColor="Red" ValidationExpression="\(?(\d{3})?\)?´[\s-]?\d{4}[\s-]?\d{4}&quot;&gt;"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 209px">Aeropuerto de salida</td>
                                    <td>
                                        <asp:TextBox ID="txtAero2" runat="server" Width="191px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAero2" Display="Dynamic" ErrorMessage="Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                             
                                <tr>
                                    <td style="width: 209px; height: 20px">Apellido</td>
                                    <td style="height: 20px">
                                        <asp:TextBox ID="txtApe" runat="server" Width="191px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtApe" Display="Dynamic" ErrorMessage="Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 209px; height: 20px"></td>
                                    <td style="height: 20px">
                                        <asp:Button ID="Button6" runat="server" Text="Buscar" Width="132px" />
                                    </td>
                                </tr>
                             
                            </table>
                        </asp:Panel>
                           </div>
                </div>

                   <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                       
                        <asp:Panel ID="Panel2" runat="server">
                            <table style="width:66%;" align="center">
                                <tr>
                                    <td style="height: 20px; width: 180px">Numero de Boleto</td>
                                    <td style="height: 20px">
                                        <asp:TextBox ID="txtBoleto" runat="server" Width="183px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBoleto" Display="Dynamic" ErrorMessage="Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td style="height: 20px"></td>
                                </tr>
                                <tr>
                                    <td style="width: 180px; height: 22px">Aeropuerto de Salida</td>
                                    <td style="height: 22px">
                                        <asp:TextBox ID="txtAero3" runat="server" Width="183px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAero3" Display="Dynamic" ErrorMessage="Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td style="height: 22px"></td>
                                </tr>
                             
                                <tr>
                                    <td style="width: 180px">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button5" runat="server" Text="Buscar" Width="127px" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                             
                            </table>
                
                        </asp:Panel>

                     
                           </div>
                </div>



            
            </div>
        </div>
    



  



    <script src="js/bootstrap.min.js"></script>
</body>
</html>
</asp:Content>

