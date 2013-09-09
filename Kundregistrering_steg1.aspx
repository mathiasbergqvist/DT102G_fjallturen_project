<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kundregistrering_steg1.aspx.cs" Inherits="Kundregistrering" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a;"><strong><span style="font-family: Verdana">
        Kundregistrering steg I - kunduppgifter<br />
        <br />
    </span>
    </strong><span style="font-size: 12pt; color: #000000; font-family: Verdana;">Vänligen fyll i <span>
        <strong><span style="text-decoration: underline">alla</span></strong> </span>fälten nedan och 
        för att genomföra steg ett av din kundregistrering hos Fjällturen AB.<br />
        <br />
        </span></span><span style="font-family: Verdana">Förnamn: </span><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <span style="font-family: Verdana">Efternamn: </span><asp:TextBox
        ID="TextBox2" runat="server"></asp:TextBox><br />
    <span style="font-family: Verdana">Användarnamn: </span><asp:TextBox ID="TextBox3"
        runat="server"></asp:TextBox><span style="font-family: Verdana"> &nbsp;(Namnet du tänker
            använda vid inloggnig)<br />
            Address: </span>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
    <span style="font-family: Verdana">Telefonnummer:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
    </span>
    <br />
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt"
        Height="39px" OnClick="Button1_Click" Text="Steg II ->" Width="83px" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12pt"
        ForeColor="Red" Text="Label" Visible="False"></asp:Label>
</asp:Content>

