<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Snöskoter.aspx.cs" Inherits="Snöskoter" Title="Snöskoter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><strong>Snöskoteruthyrning<br />
    </strong>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Bilder/skoterbild.jpg" /><br />
        <br />
        <span style="font-size: 12pt; color: #000000">Hos oss på fjällturen AB kan du hyra någon
            av våra fina snöskotrar. Uthyrningen sker under ett dygn och du kan hyra upp till
            5 st. skotrar per bokning/person. Priset är 800kr per dyng och skoter. Du som hyr
            måste vara minst 18 år gammal.<br />
            Vid efterfrågan erbjuder vi dessutom guidade turer med snöskoter.&nbsp;<br />
            För att boka snöskoter kan du kontakta Fjällturen AB på tel. xxx - xxxxxx eller
            via mail: bokning@fjallturen.com<br />
            Om du är kund hos Fjällturen AB kan du
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/login.aspx">logga in</asp:LinkButton>
            och genomföra bokningen själv.<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Kundregistrering_steg1.aspx">Bli Kund.</asp:LinkButton><br />
            &nbsp;<br />
        </span></span>
</asp:Content>

