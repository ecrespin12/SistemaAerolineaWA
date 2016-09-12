<%@ Page Title="" Language="C#" MasterPageFile="~/masterP.master" AutoEventWireup="true" CodeFile="estadoVuelo.aspx.cs" Inherits="estadoVuelo_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
    <p>
        <br />
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        ESTADO DE VUELO</p>
    <p>
        <table style="width:80%;" align="center">
            <tr>
                <td colspan="3" style="height: 20px">El detalle del vuelo se encuentra en línea con nuestro centro de control para los vuelos operados por World Airlines.<br />
                    Esta información puede variar en caso de ser necesario un ajuste operacional de última hora.</td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <br />
                </td>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">Tipo de cobsulta: por Ruta</td>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <table style="width:80%;" align="center">
            <tr>
                <td class="modal-sm" style="width: 158px">Ciudad de Origen:</td>
                <td style="width: 265px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="251px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Debe ingresar ciudad de origen" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 158px; height: 22px">Ciudad de Destino</td>
                <td style="width: 265px; height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="251px"></asp:TextBox>
                </td>
                <td style="height: 22px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Debe ingresar ciudad de destino" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 158px; height: 154px">Fecha de Vuelo</td>
                <td style="width: 265px; height: 154px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Debe ingresar fecha" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 154px">
                    <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Fechas" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="26px" NextPrevFormat="ShortMonth" Width="202px" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 158px">&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 158px">&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 158px">
                    <asp:Button ID="Button1" runat="server" Text="CONSULTAR" Width="152px" OnClick="Button1_Click" />
                </td>
                <td style="width: 265px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 158px">&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
   
    
</asp:Content>

