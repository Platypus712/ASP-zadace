<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LV4_MasterPages.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Prijava korisnika</h3>
            <asp:Login ID="Login1" runat="server" UserNameLabelText="Korisničko ime: "
                PasswordLabelText="Lozinka: " DisplayRememberMe="false"
                FailureText="Neuspješna prijava" LoginButtonText="Prijavi se!"
                OnAuthenticate="Login1_Authenticate" ></asp:Login>
            <br />
            <h3>Obrazac za kreiranje novog korisnika</h3>
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server"
                UserNameLabelText="Korisničko ime: " PasswordLabelText="Lozinka: "
                ConfirmPasswordLabelText="Potvrdite lozinku: " EmailLabelText="Email: "
                QuestionLabelText="Sigurnosno pitanje: " AnswerLabelText="Sigurnosni odgovor: "
                CreateUserButtonText="Registriraj me!" LoginCreatedUser="false"
                OnNextButtonClick="CreateUserWizard1_NextButtonClick"
                ContinueDestinationPageUrl="~/Main.aspx">
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
    </form>
</body>
</html>
