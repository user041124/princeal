<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication88.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up</title>
    <link rel="stylesheet" href="stylesheet1.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-container">
            <h2>Sign Up</h2>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" AssociatedControlID="TextBox1">Username:</asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Username" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" AssociatedControlID="TextBox2">Email:</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Email" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" AssociatedControlID="TextBox3">Password:</asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" required></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" />
                <p>Already have an account? <asp:HyperLink ID="HyperLink1" runat="server" href="WebForm2.aspx">Login</asp:HyperLink></p>
            </div>
    </form>
</body>
</html>