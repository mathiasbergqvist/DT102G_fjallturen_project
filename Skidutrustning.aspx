<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Skidutrustning.aspx.cs" Inherits="Skidutrustning" Title="Skidutrustning
" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><strong>Skiduthyrning<br />
    </strong>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Bilder/slalom.jpg" /><br />
        <br />
        <span style="font-size: 12pt; color: #000000">Hos oss p� fj�llturen AB kan du hyra skidor
            f�r hela familjen. Uthyrningen sker under ett dygn och du kan om du vill p� samma
            g�ng hyra stavar, hj�lm och pj�xor.<br />
            Prisschema:<br />
        </span></span>
    <ul>
        <li><span style="font-family: Verdana">Skidor - 450kr</span></li><li><span style="font-family: Verdana">Pj�xor - 100kr</span></li><li><span style="font-family: Verdana">Stavar - 50kr</span></li><li><span style="font-family: Verdana">Hj�lm - 50kr&nbsp;</span></li></ul>
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><span style="font-size: 12pt;
        color: #000000">
        <br />
        Vid efterfr�gan erbjuder vi dessutom guidade skidturer.&nbsp;<br />
        F�r att boka skidutrustning kan du kontakta Fj�llturen AB p� tel. xxx - xxxxxx eller
        via mail: bokning@fjallturen.com<br />
        Om du �r kund hos Fj�llturen AB kan du </span>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="12pt" PostBackUrl="~/login.aspx">logga in</asp:LinkButton><span
            style="font-size: 12pt; color: #000000"> och genomf�ra bokningen sj�lv.</span><asp:LinkButton
                ID="LinkButton1" runat="server" Font-Size="12pt" PostBackUrl="~/Kundregistrering_steg1.aspx">Bli Kund.</asp:LinkButton><br />
    </span>
</asp:Content>

