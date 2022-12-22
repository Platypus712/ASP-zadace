<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MasterContentExamples.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" UserNameLabelText="Korisničko ime:"
                PasswordLabelText="Lozinka:" ConfirmPasswordLabelText="Ponovite lozinku:" EmailLabelText="Email:"
                QuestionLabelText="Sigurnosno pitanje:" AnswerLabelText="Sigurnosni odgovor:"
                ConfirmPasswordCompareErrorMessage="Lozinke se ne podudaraju!" OnCreatedUser="CreateUserWizard1_CreatedUser">
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
