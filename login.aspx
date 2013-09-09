<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="LoggaIn" Title="Logga In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; font-family: Verdana; color: #990a0a;"><strong>Logga in<br />
        <br />
    </strong>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 100%; font-weight: bold;">
            <tr>
                <td valign="top">
                    &nbsp;<table style="width: 100%">
                        <tr>
                            <td width="50%">
                    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4"
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="12pt" ForeColor="#333333" OnLoggedIn="Login1_LoggedIn" FailureText="Ett fel inträffade i samband med din inloggning. Var god försök igen." LoginButtonText="Logga in" PasswordLabelText="Lösenord:" PasswordRequiredErrorMessage="Du måste fylla i lösenord." RememberMeText="Kom ihåg mig." TitleText="Logga In" UserNameLabelText="Användarnamn:" UserNameRequiredErrorMessage="Du måste fylla i användarnamn."
                        >
                        <TextBoxStyle Font-Size="0.8em" />
                        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
                            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:Login>
                            </td>
                            <td valign="top" width="50%">
                                <span style="font-size: 12pt; color: #000000">Om du inte redan är kund hos oss kan du
                                    skaffa ett användarkonto för inloggning och bli det
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Kundregistrering_steg1.aspx">här.</asp:HyperLink></span></td>
                        </tr>
                    </table>
                    &nbsp;<br />
                </td>
                <td valign="top">
                </td>
            </tr>
        </table>
    </span>
</asp:Content>

