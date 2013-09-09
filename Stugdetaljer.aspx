<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stugdetaljer.aspx.cs" Inherits="Stugdetaljer" Title="Stugdetaljer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        tillgänglig.
        <br />
        För att göra en bokning kan du kontakta Fjällturen AB på tel. xxx - xxxxxx eller
        via mail: bokning@fjallturen.com<br />
        Om du är kund hos Fjällturen AB kan du
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/login.aspx">logga in</asp:LinkButton>
        och genomföra bokningen själv.<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Kundregistrering_steg1.aspx">Bli Kund.</asp:LinkButton><br />
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
                    </td>
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


