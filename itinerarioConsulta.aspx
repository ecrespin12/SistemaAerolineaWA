<%@ Page Title="" Language="C#" MasterPageFile="~/masterP.master" AutoEventWireup="true" CodeFile="itinerarioConsulta.aspx.cs" Inherits="estadoVuelo_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
    <p>
        <br />
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        CONSULTA DE ITINERARIOS</p>
    <p>
        <table style="width:80%;" align="center">
            <tr>
                <td colspan="3" style="height: 20px"><span>La información está sujeta a cambios operacionales del aeropuerto de origen del vuelo. Preséntate en los horarios establecidos para el chequeo y abordaje.</span></td>
            </tr>
            <tr>
                <td style="height: 20px; width: 121px;">
                    <br />
                </td>
                <td style="height: 20px; width: 371px;"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px; width: 121px;">
                    Forma:<br />
&nbsp;Ida y Regreso</td>
                <td style="height: 20px; width: 371px;">
                    &nbsp;</td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 121px">&nbsp;</td>
                <td class="modal-sm" style="width: 371px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <table style="width:80%;" align="center">
            <tr>
                <td class="modal-sm" style="width: 158px; height: 22px;">Ciudad Origen</td>
                <td style="width: 265px; height: 22px;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="251px"></asp:TextBox>
                </td>
                <td style="height: 22px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Debe ingresar ciudad de origen" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 158px; height: 22px">Ciudad Destino</td>
                <td style="width: 265px; height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="251px"></asp:TextBox>
                </td>
                <td style="height: 22px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Debe ingresar ciudad de destino" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 158px; height: 154px">
                    <asp:Label ID="Label1" runat="server" Text="Fecha Salida"></asp:Label>
                </td>
                <td style="width: 265px; height: 154px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Debe ingresar fecha salida" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 154px">
                    <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Salida" Width="82px" />
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
                <td class="modal-sm" style="width: 158px">
                    <asp:Label ID="Label2" runat="server" Text="Fecha Regreso"></asp:Label>
                </td>
                <td style="width: 265px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Debe ingresar fecha destino" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Regreso" />
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="26px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar2_SelectionChanged" Width="202px">
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
                <td class="modal-sm" style="width: 158px">
                    <br />
                    <br />
                    <br />
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

