<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_login.aspx.cs" Inherits="StaffWEB.m_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Facebook Login Form</title>
  <link rel="stylesheet" href="CSS/Log_style.css" type="text/css"/>
</head>
<body>
  <form id="logForm" class="login" runat="server">
    <h1>Administrer log</h1>
      
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User name required" ControlToValidate="text_username" />
      <asp:TextBox ID="text_username" class="login-input" runat="server"/>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required" ControlToValidate="text_pwd"></asp:RequiredFieldValidator>
      <asp:TextBox ID="text_pwd" class="login-input" runat="server" />    
      <asp:Button ID="btn_submit" CssClass="login-submit" runat="server" Text="Log in" OnClick="btn_submit_Click"/>
      <p class="login-help"><a href="index.html">Forgot password?</a></p>
      <asp:Label ID="logResult" runat="server" CssClass="login-result"></asp:Label>
      
  </form>
</body>
</html>
