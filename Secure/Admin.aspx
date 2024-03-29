<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Secure_Admin" Title="Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><strong>Administration<br />
    </strong><span style="font-size: 12pt; color: #000000">Via adminverktyget sk�ter du
        administration av bokningar och anv�ndare. V�lj f�rst adminverktyg i dropdownmenyn.<br />
        Adminverktyg:
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Selected="True">Stugor</asp:ListItem>
            <asp:ListItem>Skoteruthyrning</asp:ListItem>
            <asp:ListItem>Skiduthyrning</asp:ListItem>
            <asp:ListItem>Inloggning</asp:ListItem>
            <asp:ListItem>Kunder</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBokningStugor"
            TypeName="DataSetStugorTableAdapters.Bokning_Stugor_TableAdapter">
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True"
            AutoGenerateSelectButton="True" DataKeyNames="Bokningsnamn" DataSourceID="ObjectDataSource1" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Bokningsnamn" HeaderText="Kundnamn" SortExpression="Bokningsnamn">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Stugnamn" HeaderText="Stugnamn" SortExpression="Stugnamn">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <RowStyle BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
                <br />
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" InsertMethod="Insert"
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBokningStugorDetaljer"
            TypeName="DataSetStugorTableAdapters.Bokning_Stugor_Detaljer_TableAdapter" UpdateMethod="Update" DataObjectTypeName="System.Data.DataRow">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="Bokningsnamn"
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="Bokningsnamn" Type="String" />
                <asp:Parameter Name="Datum" Type="DateTime" />
                <asp:Parameter Name="Stugnamn" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" AutoGenerateInsertButton="True"
            AutoGenerateRows="False" DataKeyNames="Bokningsnamn" DataSourceID="ObjectDataSource2"
            Height="50px" Width="125px" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Fields>
                <asp:BoundField DataField="Bokningsnamn" HeaderText="Kundnamn" SortExpression="Bokningsnamn" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                <asp:BoundField DataField="Stugnamn" HeaderText="Stugnamn" SortExpression="Stugnamn" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <RowStyle BackColor="#EFF3FB" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:DetailsView>
                <br />
                <br />
            </asp:View>
            <br />
            <asp:View ID="View2" runat="server">
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server"
                    DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBokningSkoter"
                    TypeName="DataSetStugorTableAdapters.Bokning_Sn�skoter_TableAdapter">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_Namn" Type="String" />
                    </DeleteParameters>
                </asp:ObjectDataSource>
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="Namn" DataSourceID="ObjectDataSource3" ForeColor="#333333"
                    GridLines="None" AutoGenerateDeleteButton="True" AutoGenerateSelectButton="True">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                        <asp:BoundField DataField="Namn" HeaderText="Namn" ReadOnly="True" SortExpression="Namn" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server"
                    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBokningSkoterDetalj"
                    TypeName="DataSetStugorTableAdapters.Bokning_Sn�skoter_Detaljer_TableAdapter"
                    UpdateMethod="Update">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView2" DefaultValue="0" Name="Namn" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Datum" Type="DateTime" />
                        <asp:Parameter Name="Antal" Type="Int16" />
                        <asp:Parameter Name="Namn" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Datum" Type="DateTime" />
                        <asp:Parameter Name="Antal" Type="Int16" />
                        <asp:Parameter Name="Original_Namn" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4"
                    DataKeyNames="Namn" DataSourceID="ObjectDataSource4" ForeColor="#333333" GridLines="None"
                    Height="50px" Width="125px" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" OnItemInserted="DetailsView2_ItemInserted" OnItemUpdated="DetailsView2_ItemUpdated">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                        <asp:BoundField DataField="Antal" HeaderText="Antal" SortExpression="Antal" />
                        <asp:BoundField DataField="Namn" HeaderText="Namn" ReadOnly="True" SortExpression="Namn" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <br />
            </asp:View>
            <br />
            <asp:View ID="View3" runat="server">
                <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete"
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBokningSkidor"
                    TypeName="DataSetStugorTableAdapters.Bokning_Skidor_TableAdapter">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_Namn" Type="String" />
                    </DeleteParameters>
                </asp:ObjectDataSource>
                <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="Namn" DataSourceID="ObjectDataSource5" ForeColor="#333333"
                    GridLines="None" AutoGenerateDeleteButton="True" AutoGenerateSelectButton="True">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Datum" HeaderText="Datum" ReadOnly="True" SortExpression="Datum">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Namn" HeaderText="Kundnamn" SortExpression="Namn">
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
                <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" InsertMethod="Insert"
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBokningSkidorDetaljer"
                    TypeName="DataSetStugorTableAdapters.Bokning_Skidor_Detaljer_TableAdapter" UpdateMethod="Update">
                    <UpdateParameters>
                        <asp:Parameter Name="Skidor" Type="Int32" />
                        <asp:Parameter Name="Pj&#228;xor" Type="Int32" />
                        <asp:Parameter Name="Stavar" Type="Int32" />
                        <asp:Parameter Name="Hj&#228;lm" Type="Int32" />
                        <asp:Parameter Name="Namn" Type="String" />
                        <asp:Parameter Name="Original_Datum" Type="DateTime" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView3" DefaultValue="0" Name="Namn" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Datum" Type="DateTime" />
                        <asp:Parameter Name="Skidor" Type="Int32" />
                        <asp:Parameter Name="Pj&#228;xor" Type="Int32" />
                        <asp:Parameter Name="Stavar" Type="Int32" />
                        <asp:Parameter Name="Hj&#228;lm" Type="Int32" />
                        <asp:Parameter Name="Namn" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
                <br />
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" CellPadding="4"
                    DataKeyNames="Namn" DataSourceID="ObjectDataSource6" ForeColor="#333333" GridLines="None"
                    Height="50px" OnItemInserted="DetailsView3_ItemInserted" OnItemUpdated="DetailsView3_ItemUpdated"
                    Width="125px" AutoGenerateEditButton="True" AutoGenerateInsertButton="True">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="Datum" HeaderText="Datum" ReadOnly="True" SortExpression="Datum" />
                        <asp:BoundField DataField="Skidor" HeaderText="Skidor" SortExpression="Skidor" />
                        <asp:BoundField DataField="Pj&#228;xor" HeaderText="Pj&#228;xor" SortExpression="Pj&#228;xor" />
                        <asp:BoundField DataField="Stavar" HeaderText="Stavar" SortExpression="Stavar" />
                        <asp:BoundField DataField="Hj&#228;lm" HeaderText="Hj&#228;lm" SortExpression="Hj&#228;lm" />
                        <asp:BoundField DataField="Namn" HeaderText="Namn" SortExpression="Namn" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" DeleteMethod="Delete"
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataLogin" TypeName="DataSetStugorTableAdapters.aspnet_Users_TableAdapter">
                    <DeleteParameters>
                        <asp:Parameter DbType="Guid" Name="Original_ApplicationId" />
                        <asp:Parameter Name="Original_LoweredUserName" Type="String" />
                    </DeleteParameters>
                </asp:ObjectDataSource>
                <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    AutoGenerateDeleteButton="True" AutoGenerateSelectButton="True" CellPadding="4"
                    DataKeyNames="UserName" DataSourceID="ObjectDataSource7" ForeColor="#333333"
                    GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="Anv&#228;ndarnamn" SortExpression="UserName">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" ReadOnly="True"
                            SortExpression="ApplicationId" Visible="False" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" Visible="False" />
                        <asp:BoundField DataField="LoweredUserName" HeaderText="LoweredUserName" ReadOnly="True"
                            SortExpression="LoweredUserName" Visible="False" />
                        <asp:BoundField DataField="MobileAlias" HeaderText="MobileAlias" SortExpression="MobileAlias"
                            Visible="False" />
                        <asp:CheckBoxField DataField="IsAnonymous" HeaderText="IsAnonymous" SortExpression="IsAnonymous"
                            Visible="False" />
                        <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate"
                            Visible="False" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" InsertMethod="Insert"
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataLoginDetaljer"
                    TypeName="DataSetStugorTableAdapters.aspnet_Users_Detaljer_TableAdapter" UpdateMethod="Update">
                    <UpdateParameters>
                        <asp:Parameter DbType="Guid" Name="UserId" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="MobileAlias" Type="String" />
                        <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                        <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                        <asp:Parameter DbType="Guid" Name="Original_ApplicationId" />
                        <asp:Parameter Name="Original_LoweredUserName" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView4" DefaultValue="0" Name="UserName" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Guid" Name="ApplicationId" />
                        <asp:Parameter DbType="Guid" Name="UserId" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="LoweredUserName" Type="String" />
                        <asp:Parameter Name="MobileAlias" Type="String" />
                        <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                        <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                    </InsertParameters>
                </asp:ObjectDataSource>
                <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateEditButton="True" AutoGenerateInsertButton="True"
                    AutoGenerateRows="False" CellPadding="4" DataKeyNames="UserName" DataSourceID="ObjectDataSource8"
                    ForeColor="#333333" GridLines="None" Height="50px" OnItemInserted="DetailsView4_ItemInserted"
                    OnItemUpdated="DetailsView4_ItemUpdated" Width="125px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" ReadOnly="True"
                            SortExpression="ApplicationId" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="LoweredUserName" HeaderText="LoweredUserName" ReadOnly="True"
                            SortExpression="LoweredUserName" />
                        <asp:BoundField DataField="MobileAlias" HeaderText="MobileAlias" SortExpression="MobileAlias" />
                        <asp:CheckBoxField DataField="IsAnonymous" HeaderText="IsAnonymous" SortExpression="IsAnonymous" />
                        <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
            </asp:View>
            <asp:View ID="View5" runat="server">
                <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" DeleteMethod="Delete"
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataKunder" TypeName="DataSetStugorTableAdapters.Kunder_TableAdapter">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_Anv&#228;ndarnamn" Type="String" />
                    </DeleteParameters>
                </asp:ObjectDataSource>
                <asp:GridView ID="GridView5" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    AutoGenerateDeleteButton="True" AutoGenerateSelectButton="True" CellPadding="4"
                    DataKeyNames="Anv�ndarnamn" DataSourceID="ObjectDataSource9" ForeColor="#333333"
                    GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Anv&#228;ndarnamn" HeaderText="Anv&#228;ndarnamn" ReadOnly="True"
                            SortExpression="Anv&#228;ndarnamn" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" InsertMethod="Insert"
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataKunderDetaljer"
                    TypeName="DataSetStugorTableAdapters.Kunder_Detaljer_TableAdapter" UpdateMethod="Update">
                    <UpdateParameters>
                        <asp:Parameter Name="F&#246;rnamn" Type="String" />
                        <asp:Parameter Name="Efternamn" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Telefonnummer" Type="String" />
                        <asp:Parameter Name="Original_Anv&#228;ndarnamn" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView5" DefaultValue="0" Name="Anv&#228;ndarnamn"
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Anv&#228;ndarnamn" Type="String" />
                        <asp:Parameter Name="F&#246;rnamn" Type="String" />
                        <asp:Parameter Name="Efternamn" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Telefonnummer" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
                <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" CellPadding="4"
                    DataKeyNames="Anv�ndarnamn" DataSourceID="ObjectDataSource10" ForeColor="#333333"
                    GridLines="None" Height="50px" OnItemInserted="DetailsView5_ItemInserted" OnItemUpdated="DetailsView5_ItemUpdated"
                    Width="125px" AutoGenerateEditButton="True" AutoGenerateInsertButton="True">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="Anv&#228;ndarnamn" HeaderText="Anv&#228;ndarnamn" ReadOnly="True"
                            SortExpression="Anv&#228;ndarnamn" />
                        <asp:BoundField DataField="F&#246;rnamn" HeaderText="F&#246;rnamn" SortExpression="F&#246;rnamn" />
                        <asp:BoundField DataField="Efternamn" HeaderText="Efternamn" SortExpression="Efternamn" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Telefonnummer" HeaderText="Telefonnummer" SortExpression="Telefonnummer" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <br />
            </asp:View>
        </asp:MultiView><br />
        &nbsp;&nbsp;<br />
        <br />
        <br />
        &nbsp;<br />
    </span></span>
</asp:Content>

