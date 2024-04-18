<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication88.WebForm2" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="stylesheet2.css">
</head>
<body>
  <form id="form1" runat="server">
    <div class="login-container">
      <h2>Login</h2>
      <div class="form-group">
          <asp:Label ID="Label1" runat="server" AssociatedControlID="txtUsername">Username:</asp:Label>
        <asp:Textbox ID="txtUsername" runat="server" CssClass="form-control" Required="true" ></asp:Textbox>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <asp:Textbox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" Required="true" ></asp:Textbox>
      </div>
      <div class="form-group">
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-primary" />
      </div>
      <div class="form-group">
        <p>Don't have an account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="WebForm1.aspx" CssClass="btn btn-link">Signup</asp:HyperLink></p>
      </div>
    </div>
  </form>
</body>
</html>