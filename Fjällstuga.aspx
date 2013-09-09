<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fjällstuga.aspx.cs" Inherits="Fjällstuga" Title="Fjällstugor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18px; color: #990a09;"><span style="font-size: 18pt"><span><strong>
        <span style="font-family: Verdana">Fjällstugor<br />
        </span>
        </strong><span style="font-size: 12pt; color: #000000; font-family: Verdana;">Hos Fjällturen AB finner du ett
            brett utbud av fjällstugor i olika storlekar och prisklasser. Nedan ser du dels
            våra egna stugor, men även en del privatägda som vi förmedlar uthyrning av. Våra
            egna stugor är identiska i utseende och pris, medans de privatägda varierar&nbsp;
            utefter
            behov. Våra stugor städkontrolleras regelbundet och vid efterfrågan ges även guidning
            av stugorna.<br />
            OBS! Under högsäsong (v.52, v.1, v.7-10 samt v.14-15) tillkommer 35% på angivet
            pris.</span></span><strong><span style="font-family: Arial Baltic"><br />
            </span></strong></span>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetEgnaStugor" TypeName="DataSetStugorTableAdapters.TableAdapterStugor">
        </asp:ObjectDataSource>
        <span style="font-family: Arial Baltic"></span>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
            CellPadding="4" DataKeyNames="Namn" DataSourceID="ObjectDataSource1" Font-Size="10pt"
            ForeColor="#333333" GridLines="None" Width="100%" Font-Names="Verdana" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:CommandField SelectText="Se mer/Boka" ShowSelectButton="True" />
                <asp:BoundField DataField="Namn" HeaderText="Namn" ReadOnly="True" SortExpression="Namn"
                    Visible="False" />
                <asp:CheckBoxField DataField="Inhyrd" HeaderText="Privat&#228;gd" SortExpression="Inhyrd">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:CheckBoxField>
                <asp:BoundField DataField="Boyta" HeaderText="Boyta (kvm)" SortExpression="Boyta">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Rum" HeaderText="Rum" SortExpression="Rum">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="B&#228;ddar" HeaderText="B&#228;ddar" SortExpression="B&#228;ddar">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="K&#246;kstyp" HeaderText="K&#246;k/Pentry" SortExpression="K&#246;kstyp">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="WC" HeaderText="Dusch/Bad" SortExpression="WC">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="Parstuga" HeaderText="Parstuga" SortExpression="Parstuga">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:CheckBoxField>
                <asp:BoundField DataField="Veckopris" DataFormatString="{0:c}" HeaderText="Veckopris"
                    HtmlEncode="False" SortExpression="Veckopris">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Dygnspris" DataFormatString=" {0:c}" HeaderText="Dygnspris"
                    HtmlEncode="False" SortExpression="Dygnspris">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <span style="font-family: Arial Baltic">&nbsp;<br />
            <br />
        </span>
    </span>
</asp:Content>

