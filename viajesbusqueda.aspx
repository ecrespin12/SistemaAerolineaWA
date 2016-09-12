<%@ Page Title="" Language="C#" MasterPageFile="~/masterP.master" AutoEventWireup="true" CodeFile="viajesbusqueda.aspx.cs" Inherits="viajesbusqueda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <br />
    BUSQUEDA DE VIAJE<br />
    <table align="center" style="width: 77%;">
        <tr>
            <td style="width: 198px">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Ida y Regreso" Checked="True" GroupName="vi" />
            </td>
            <td style="width: 153px">
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Ida" GroupName="vi" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Multiple destinos" GroupName="vi" />
            </td>
        </tr>
    </table>
</p>
<p>
    <table align="center" style="width: 77%;">
        <tr>
            <td colspan="2">ORIGEN</td>
        </tr>
        <tr>
            <td style="width: 246px">Pais</td>
            <td>
                <asp:DropDownList ID="aapais1" runat="server" Height="16px" Width="236px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>El Salvador</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; height: 20px">Ciudad, Aeropuerto</td>
            <td style="height: 20px">
                <asp:DropDownList ID="ddaero1" runat="server" Height="16px" Width="236px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>San Salvador, Aeropuerto Monseñor Romero</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="aapais1" Display="Dynamic" ErrorMessage="Seleccione pais origen" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddaero1" Display="Dynamic" ErrorMessage="Seleccione ciudad origen" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
</p>
<table align="center" style="width: 77%;">
    <tr>
        <td colspan="2">DESTINO</td>
    </tr>
    <tr>
        <td style="width: 246px">Pais</td>
        <td>
            <asp:DropDownList ID="ddpais" runat="server" Width="236px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Mexico</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 246px; height: 20px">Ciudad, Aeropuerto</td>
        <td style="height: 20px">
            <asp:DropDownList ID="ddaero" runat="server" Width="236px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Aeropuerto La Paz, Mexico DF</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddpais" Display="Dynamic" ErrorMessage="Seleccione pais Destino" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddaero" Display="Dynamic" ErrorMessage="Seleccione Ciudad Destino" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 246px">Fecha de ida</td>
        <td>
            <asp:TextBox ID="txtida" runat="server" Width="282px"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="ver" />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="105px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="182px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtida" Display="Dynamic" ErrorMessage="Seleccione fecha de ida" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 246px; height: 20px;">Fecha de regreso</td>
        <td style="height: 20px">
            <asp:TextBox ID="txtregreso" runat="server" Width="282px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="ver" />
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="105px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar2_SelectionChanged" Width="182px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtregreso" Display="Dynamic" ErrorMessage="Seleccione fecha de regreso" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 246px; height: 20px;">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <table align="left" style="width: 50%;">
                <tbody class="text-left">
                    <tr>
                        <td colspan="3" style="height: 20px">Número de pasajers</td>
                    </tr>
                    <tr>
                        <td style="height: 20px">Adulos (&gt;=12)</td>
                        <td style="height: 20px">Niños (2-11)</td>
                        <td style="height: 20px; width: 90px">Infantes &lt;2&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList5" runat="server" Width="69px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem Value="6"></asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList6" runat="server" Height="16px" Width="69px">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem Value="7"></asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 90px">
                            <asp:DropDownList ID="DropDownList7" runat="server" Height="16px" Width="69px">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem Value="3"></asp:ListItem>
                                <asp:ListItem Value="4"></asp:ListItem>
                                <asp:ListItem Value="5"></asp:ListItem>
                                <asp:ListItem Value="6"></asp:ListItem>
                                <asp:ListItem Value="7"></asp:ListItem>
                                <asp:ListItem Value="8"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
    </tr>
</table>
<p class="text-center">
    &nbsp;</p>
<p class="text-center">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BUSCAR" />
</p>
<p>
    &nbsp;</p>
</asp:Content>

