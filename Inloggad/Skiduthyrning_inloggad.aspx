<%@ Page Language="C#" MasterPageFile="~/MasterPage_inloggad.master" AutoEventWireup="true" CodeFile="Skiduthyrning_inloggad.aspx.cs" Inherits="Inloggad_Skiduthyrning_inloggad" Title="Skiduthyrning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><strong>Skiduthyrning<br />
    </strong>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Bilder/slalom.jpg" /><br />
        <br />
        <span style="font-size: 12pt; color: #000000">Hos oss på fjällturen AB kan du hyra skidor
            för hela familjen. Uthyrningen sker under en dag (06.00 - 22.00) och du kan om du vill på samma
            gång hyra stavar, hjälm och pjäxor. Du kan hyra upp till 5 st skidpar
            med tillhörande utrustning per dag/person.<br />
            Prisschema:<br />
        </span></span>
    <ul>
        <li><span style="font-family: Verdana">Skidor - 450kr</span></li><li><span style="font-family: Verdana">Pjäxor - 100kr</span></li><li><span style="font-family: Verdana">Stavar - 50kr</span></li><li><span style="font-family: Verdana">Hjälm - 50kr&nbsp;</span></li></ul>
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><span style="font-size: 12pt;
        color: #000000">
        <br />
        Vid efterfrågan erbjuder vi dessutom guidade skidturer.&nbsp;<br />
        Eftersom du är kund hos oss och inloggad kan du själv göra en bokning av skidutrustning genom att fylla i formuläret nedan.&nbsp;<br />
        Du även kontakta Fjällturen AB på tel. xxx - xxxxxx eller
        via mail: bokning@fjallturen.com
        för bokning.<br />
        <br />
        <table style="width: 100%">
            <tr>
                <td style="width: 100px; height: 94px">
                    <span style="font-size: 14pt; color: #990a0a"><strong>Fyll i formuläret för att genomföra en bokning<br />
                        <br />
                    </strong><span style="font-size: 12pt; color: #000000">Uthyrningsdag:<asp:TextBox
                        ID="TextBox1" runat="server"></asp:TextBox><strong>&nbsp; </strong>yyyy-mm-dd<br />
                        Antal par skidor:
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True">Ej vald</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                        </asp:DropDownList><br />
                        Antal par pjäxor:
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Selected="True">0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList><br />
                        Antal par stavar:
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Selected="True">0</asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                        </asp:DropDownList><br />
                        Antal hjälmar:
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList><br />
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12pt"
                            Height="36px" OnClick="Button1_Click" Text="Boka" Width="82px" />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12pt"
                            ForeColor="Red" Text="Label" Visible="False"></asp:Label></span></span></td>
            </tr>
        </table>
    </span>
    </span>
</asp:Content>
