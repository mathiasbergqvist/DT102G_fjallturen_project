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
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="12pt" ForeColor="#333333" OnLoggedIn="Login1_LoggedIn" FailureText="Ett fel intr�ffade i samband med din inloggning. Var god f�rs�k igen." LoginButtonText="Logga in" PasswordLabelText="L�senord:" PasswordRequiredErrorMessage="Du m�ste fylla i l�senord." RememberMeText="Kom ih�g mig." TitleText="Logga In" UserNameLabelText="Anv�ndarnamn:" UserNameRequiredErrorMessage="Du m�ste fylla i anv�ndarnamn."
                        >
                        <TextBoxStyle Font-Size="0.8em" />
                        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
                            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:Login>
                            </td>
                            <td valign="top" width="50%">
                                <span style="font-size: 12pt; color: #000000">Om du inte redan �r kund hos oss kan du
                                    skaffa ett anv�ndarkonto f�r inloggning och bli det
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Kundregistrering_steg1.aspx">h�r.</asp:HyperLink></span></td>
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

