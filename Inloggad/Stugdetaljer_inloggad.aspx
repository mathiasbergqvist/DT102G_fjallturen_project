<%@ Page Language="C#" MasterPageFile="~/MasterPage_inloggad.master" AutoEventWireup="true" CodeFile="Stugdetaljer_inloggad.aspx.cs" Inherits="Inloggad_Stugdetaljer_inloggad" Title="Stugdetaljer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
<!--


// -->
</script>

 <span style="font-size: 18pt; font-family: Arial Baltic"><strong><span style="color: #990a0a">
        <span style="font-family: Verdana">
        Detaljer</span><br />
        <hr />
        <table style="width: 100%; height: 260px">
            <tr>
                <td style="width: 100px" valign="top">
                    <span style="font-family: Verdana">
                    <span style="font-size: 14pt">
        Bild invändigt&nbsp;</span><br />
                    </span>
    <asp:Image ID="Image1" runat="server" /></td>
                <td style="width: 100px" valign="top">
                    <span style="font-family: Verdana">
                    <span style="font-size: 14pt">
        Bild utvändigt</span><br />
                    </span>
    <asp:Image ID="Image2" runat="server" /></td>
            </tr>
        </table>
        <hr />
        <span style="font-size: 14pt; font-family: Verdana;">Om stugan</span><br />
    </span><span style="color: #990a0a"></span></strong></span>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetDataKommentar" TypeName="DataSetStugorTableAdapters.TableAdapterKommentar">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="Namn" QueryStringField="Namn" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Namn"
        DataSourceID="ObjectDataSource1" Font-Names="Verdana" Font-Size="12pt" Height="50px"
        Width="50%">
        <Fields>
            <asp:BoundField DataField="Namn" HeaderText="Namn" ReadOnly="True" SortExpression="Namn"
                Visible="False" />
            <asp:BoundField DataField="Kommentar" ShowHeader="False" SortExpression="Kommentar" />
        </Fields>
    </asp:DetailsView>
    <br />
    &nbsp;<br />
    <hr />
    <span style="font-size: 14pt; color: #990a0a; font-family: Arial Baltic"><strong><span
        style="font-family: Verdana">Tillgänglighet&nbsp;</span><br />
    </strong><span style="font-size: 12pt; color: #000000; font-family: Verdana">Här nedan
        i almanackan ser du vilka datum som just denna stuga finns tillgänglig. Ett datum
        markerat med rött betyder att stugan redan är bokad på detta datum och därmed ej
        tillgänglig.<br />
        Eftersom du är kund och inloggad hos oss kan du själv göra en stugbokning genom
        att fylla i här nedan vilka datum du vill boka stugan. Uthyrning sker normalt hela
        veckor eller halva veckor sö – onsd, torsd – lörd men det går även att hyra en
        eller två dagar.&nbsp;<br />
        För att göra en bokning kan du även kontakta Fjällturen AB på tel. xxx - xxxxxx eller
        via mail: bokning@fjallturen.com<br />
        <br />
    </span><br />
        <table style="width: 100%; font-weight: bold;">
            <tr>
                <td width="50%">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                        BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                        Font-Size="8pt" ForeColor="#003399" Height="200px"
                        SelectionMode="None" Width="220px" OnDayRender="Calendar1_DayRender1" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged1">
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                            Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    </asp:Calendar>
                </td>
                <td style="width: 100px" valign="top">
                    <span style="font-family: Verdana">Börja med att välja antalet dagar du vill boka stugan:<br />
                        <span style="font-size: 12pt; color: #000000">Antal dagar:</span></span>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" EnableTheming="False"
                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="Ej vald" Text="Ej vald"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList><br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="12pt"
                        ForeColor="Black" Text="Välj ett av alternativen i drop down-menyn"></asp:Label></td>
            </tr>
        </table>
        <table style="width: 100%">
            <tr>
                <td style="width: 100px; height: 50px">
                    <span style="font-family: Verdana"><strong>
                        <br />
                        Följande datum vill jag boka stugan ovan:<br />
                        <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="12pt" Font-Underline="False"
                            ForeColor="Black" Text="Dag 1: " Visible="False"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                        <asp:Label ID="Label9" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="yyyy-mm-dd" Visible="False"></asp:Label>&nbsp;<br />
                        <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="Dag 2:" Visible="False"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                        <asp:Label ID="Label10" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="yyyy-mm-dd" Visible="False"></asp:Label><br />
                        <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="Dag 3: " Visible="False"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                        <asp:Label ID="Label11" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="yyyy-mm-dd" Visible="False"></asp:Label><br />
                        <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="Dag 4: " Visible="False"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                        <asp:Label ID="Label12" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="yyyy-mm-dd" Visible="False"></asp:Label><br />
                        <asp:Label ID="Label6" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="Dag 5: " Visible="False"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                        <asp:Label ID="Label13" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="yyyy-mm-dd" Visible="False"></asp:Label><br />
                        <asp:Label ID="Label7" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="Dag 6: " Visible="False"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                        <asp:Label ID="Label14" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="yyyy-mm-dd" Visible="False"></asp:Label><br />
                        <asp:Label ID="Label8" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="Dag 7: " Visible="False"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
                        <asp:Label ID="Label15" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black"
                            Text="yyyy-mm-dd" Visible="False"></asp:Label><br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Boka" Font-Bold="True" Font-Size="12pt" Height="39px" OnClick="Button1_Click" Visible="False" Width="75px" />
                        <asp:Label ID="Label16" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Red"
                            Text="Label" Visible="False"></asp:Label></strong></span></td>
            </tr>
        </table>
        <br />
    </span>
    <br />
    <br />
    <span style="font-size: 18pt"><strong><span style="color: #990a0a;">
        </span><span style="font-family: Arial Baltic"></span>
        <br />
    </strong></span>
</asp:Content>

