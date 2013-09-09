<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Skidutrustning.aspx.cs" Inherits="Skidutrustning" Title="Skidutrustning
" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><strong>Skiduthyrning<br />
    </strong>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Bilder/slalom.jpg" /><br />
        <br />
        <span style="font-size: 12pt; color: #000000">Hos oss på fjällturen AB kan du hyra skidor
            för hela familjen. Uthyrningen sker under ett dygn och du kan om du vill på samma
            gång hyra stavar, hjälm och pjäxor.<br />
            Prisschema:<br />
        </span></span>
    <ul>
        <li><span style="font-family: Verdana">Skidor - 450kr</span></li><li><span style="font-family: Verdana">Pjäxor - 100kr</span></li><li><span style="font-family: Verdana">Stavar - 50kr</span></li><li><span style="font-family: Verdana">Hjälm - 50kr&nbsp;</span></li></ul>
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><span style="font-size: 12pt;
        color: #000000">
        <br />
        Vid efterfrågan erbjuder vi dessutom guidade skidturer.&nbsp;<br />
        För att boka skidutrustning kan du kontakta Fjällturen AB på tel. xxx - xxxxxx eller
        via mail: bokning@fjallturen.com<br />
        Om du är kund hos Fjällturen AB kan du </span>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="12pt" PostBackUrl="~/login.aspx">logga in</asp:LinkButton><span
            style="font-size: 12pt; color: #000000"> och genomföra bokningen själv.</span><asp:LinkButton
                ID="LinkButton1" runat="server" Font-Size="12pt" PostBackUrl="~/Kundregistrering_steg1.aspx">Bli Kund.</asp:LinkButton><br />
    </span>
</asp:Content>

