<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"
    Inherits="Zadatak_2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server" UserNameLabelText="Korisničko ime:"
                PasswordLabelText="Lozinka" DisplayRememberMe="false" LoginButtonText="Prijavi me"
                OnAuthenticate="Login1_Authenticate" DestinationPageUrl="~/UspjesnaPrijava.aspx"
                FailureText="Neuspješan pokušaj prijave"></asp:Login>
        </div>
    </form>
</body>
</html>
