<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MasterContentExamples.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server" UserNameLabelText="Korisničko ime:"
                PasswordLabelText="Lozinka:" DestinationPageUrl="~/Registration.aspx"
                DisplayRememberMe="false" FailureText="Neuspješna prijava"
                OnAuthenticate="Login1_Authenticate" LoginButtonText="Prijavi me!" ></asp:Login>
            <asp:Button ID="btnRegistration" runat="server" Text="Registriraj se!"
                OnClick="btnRegistration_Click" />
        </div>
    </form>
</body>
</html>
