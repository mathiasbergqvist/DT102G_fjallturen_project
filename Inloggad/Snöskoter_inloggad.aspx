<%@ Page Language="C#" MasterPageFile="~/MasterPage_inloggad.master" AutoEventWireup="true" CodeFile="Snöskoter_inloggad.aspx.cs" Inherits="Inloggad_Snöskoter_inloggad" Title="Snöskoter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><strong>Snöskoteruthyrning<br />
    </strong>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Bilder/skoterbild.jpg" /><br />
        <br />
        <span style="font-size: 12pt; color: #000000">Hos oss på fjällturen AB kan du hyra någon
            av våra fina snöskotrar. Uthyrningen sker under en dag (06.00 - 22.00) och du kan hyra upp till
            5 st. skotrar per bokning/person. Priset är 800kr per dag och skoter. Du som hyr
            måste vara minst 18 år gammal.<br />
            Vid efterfrågan erbjuder vi dessutom guidade turer med snöskoter.&nbsp;<br />
            Eftersom du är kund hos oss och inloggad kan du själv göra en bokning genom att
            fylla formuläret nedan.&nbsp;<br />
            För att göra en bokning kan du även kontakta Fjällturen AB på tel. xxx - xxxxxx eller
            via mail: bokning@fjallturen.com<br />
            <br />
            <table style="width: 100%">
                <tr>
                    <td style="width: 100px">
                        <span style="font-size: 14pt; color: #990a0a"><strong>Fyll i formuläret för att genomföra en bokning<br />
                            <br />
                        </strong><span style="font-size: 12pt; color: #000000">Uthyrningsdag:<asp:TextBox
                            ID="TextBox1" runat="server"></asp:TextBox>&nbsp; yyyy-mm-dd<br />
                            Antal skotrar: &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Selected="True">Ej vald</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem Value="2"></asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList><br />
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12pt"
                                Height="38px" OnClick="Button1_Click" Text="Boka" Width="75px" />
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12pt"
                                ForeColor="Red" Text="Label" Visible="False"></asp:Label></span></span></td>
                </tr>
            </table>
            <br />
            &nbsp;<br />
        </span></span>
</asp:Content>

