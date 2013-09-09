<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kundregistrering_steg2.aspx.cs" Inherits="Kundregistrering_steg2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 18pt; color: #990a0a; font-family: Verdana"><strong>Kundregistrering
        steg II - inloggningsuppgifter<br />
        <br />
    </strong><span style="font-size: 12pt"><span style="color: #000000">V�nligen fyll i</span>
        <span style="color: #000000"><span style="text-decoration: underline"><strong>alla</strong></span>
        </span><span style="color: #000000">f�lten nedan och tryck p� "skapa anv�ndare" f�r
            att slutf�ra din kundregistrering hos Fj�llturen AB.<br />
        </span></span>
        <br />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Svar till s�kerhetsfr�ga:"
            AnswerRequiredErrorMessage="Du m�ste fylla i en s�kerhetsfr�ga" BackColor="#EFF3FB"
            BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" CancelButtonText="Avbryt"
            CompleteSuccessText="Din kundregistrering lyckades. Du kan nu logga in p� sidan och boka produkter och tj�nster sj�lv. "
            ConfirmPasswordCompareErrorMessage="L�senordet och det bekr�ftade l�senordet m�ste s�mma �verens."
            ConfirmPasswordLabelText="Bekr�fta l�senord: " ConfirmPasswordRequiredErrorMessage="Du m�ste bekr�fta ditt l�senord."
            ContinueButtonText="Forts�tt" CreateUserButtonText="Skapa anv�ndare" DuplicateEmailErrorMessage="E-mail addressen du angivit finns redan registrerad hos oss. Var v�nlig ange en ny."
            DuplicateUserNameErrorMessage="Anv�ndarnamnet du angivit finns redan registrerat hos oss och �r d�rmed upptaget. Var v�nlig v�lj ett nytt."
            EmailRegularExpressionErrorMessage="Var v�nlig v�lj en annan e-mail address."
            EmailRequiredErrorMessage="Du m�ste fylla i f�ltet f�r e-mail address." FinishCompleteButtonText="Klart"
            FinishDestinationPageUrl="~/login.aspx" FinishPreviousButtonText="F�reg�ende sida."
            Font-Names="Verdana" Font-Size="0.8em" InvalidAnswerErrorMessage="Var v�nlig fyll i ett annat svar p� s�kerhetsfr�gan."
            InvalidEmailErrorMessage="Var god fyll i f�ltet f�r e-mail p� ett korrekt s�tt."
            InvalidPasswordErrorMessage="L�senordet du har valt �r f�r kort. V�nligen fyll i ett nytt."
            InvalidQuestionErrorMessage="Var god fyll i en annan s�kerhetsfr�ga." PasswordLabelText="L�senord:"
            PasswordRegularExpressionErrorMessage="Ditt l�senord �r validerat som svagt. Var god fyll i ett nytt."
            PasswordRequiredErrorMessage="Du m�ste ange ett l�senord." QuestionLabelText="Personlig s�kerhetsfr�ga:"
            QuestionRequiredErrorMessage="Du m�ste fylla i f�ltet f�r s�kerhetsfr�gan." StartNextButtonText="N�sta"
            StepNextButtonText="N�sta steg->" StepPreviousButtonText="<-  F�reg�ende steg"
            UnknownErrorMessage="Problem vid skapandet av ditt anv�ndarkonto. V�nligen f�rs�k igen. "
            UserNameLabelText="Anv�ndarnamn (samma som i steg I): " UserNameRequiredErrorMessage="Du m�ste fylla i ett anv�ndarnamn." ContinueDestinationPageUrl="~/login.aspx">
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

