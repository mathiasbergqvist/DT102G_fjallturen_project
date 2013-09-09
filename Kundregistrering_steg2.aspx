<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kundregistrering_steg2.aspx.cs" Inherits="Kundregistrering_steg2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><strong>Kundregistrering
        steg II - inloggningsuppgifter<br />
        <br />
    </strong><span style="font-size: 12pt"><span style="color: #000000">Vänligen fyll i</span>
        <span style="color: #000000"><span style="text-decoration: underline"><strong>alla</strong></span>
        </span><span style="color: #000000">fälten nedan och tryck på "skapa användare" för
            att slutföra din kundregistrering hos Fjällturen AB.<br />
        </span></span>
        <br />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Svar till säkerhetsfråga:"
            AnswerRequiredErrorMessage="Du måste fylla i en säkerhetsfråga" BackColor="#EFF3FB"
            BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" CancelButtonText="Avbryt"
            CompleteSuccessText="Din kundregistrering lyckades. Du kan nu logga in på sidan och boka produkter och tjänster själv. "
            ConfirmPasswordCompareErrorMessage="Lösenordet och det bekräftade lösenordet måste sämma överens."
            ConfirmPasswordLabelText="Bekräfta lösenord: " ConfirmPasswordRequiredErrorMessage="Du måste bekräfta ditt lösenord."
            ContinueButtonText="Fortsätt" CreateUserButtonText="Skapa användare" DuplicateEmailErrorMessage="E-mail addressen du angivit finns redan registrerad hos oss. Var vänlig ange en ny."
            DuplicateUserNameErrorMessage="Användarnamnet du angivit finns redan registrerat hos oss och är därmed upptaget. Var vänlig välj ett nytt."
            EmailRegularExpressionErrorMessage="Var vänlig välj en annan e-mail address."
            EmailRequiredErrorMessage="Du måste fylla i fältet för e-mail address." FinishCompleteButtonText="Klart"
            FinishDestinationPageUrl="~/login.aspx" FinishPreviousButtonText="Föregående sida."
            Font-Names="Verdana" Font-Size="0.8em" InvalidAnswerErrorMessage="Var vänlig fyll i ett annat svar på säkerhetsfrågan."
            InvalidEmailErrorMessage="Var god fyll i fältet för e-mail på ett korrekt sätt."
            InvalidPasswordErrorMessage="Lösenordet du har valt är för kort. Vänligen fyll i ett nytt."
            InvalidQuestionErrorMessage="Var god fyll i en annan säkerhetsfråga." PasswordLabelText="Lösenord:"
            PasswordRegularExpressionErrorMessage="Ditt lösenord är validerat som svagt. Var god fyll i ett nytt."
            PasswordRequiredErrorMessage="Du måste ange ett lösenord." QuestionLabelText="Personlig säkerhetsfråga:"
            QuestionRequiredErrorMessage="Du måste fylla i fältet för säkerhetsfrågan." StartNextButtonText="Nästa"
            StepNextButtonText="Nästa steg->" StepPreviousButtonText="<-  Föregående steg"
            UnknownErrorMessage="Problem vid skapandet av ditt användarkonto. Vänligen försök igen. "
            UserNameLabelText="Användarnamn (samma som i steg I): " UserNameRequiredErrorMessage="Du måste fylla i ett användarnamn." ContinueDestinationPageUrl="~/login.aspx">
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px"
                Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <CreateUserButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="#507CD1" />
            <StepStyle Font-Size="0.8em" />
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </span>
</asp:Content>

