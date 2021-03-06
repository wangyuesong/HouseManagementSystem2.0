<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HomeManagementSystem2.login" %>

<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/signin-css.css" rel="stylesheet">

    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/js-login.js"></script>

  </head>
  <body>
     <form id="form1" runat="server">
    <div class="span12">
      <div class="row sign-card">
        <div class="welcome span4"></div>
          <img src="img/anjuke.png"/><div class="span4">
              <div class="form-signin">
                      <%-- <form class="form-signin">--%>
           <%-- <input type="text" class="span3" placeholder="用户名">
            <input type="text" class="span3" placeholder="密码">--%>
              <asp:TextBox ID="TB_Log_UserAccount" runat="server" CssClass="span3" Width="221px" placeholder="用户名"></asp:TextBox>
              <asp:TextBox ID="TB_Log_UserPassword" runat="server" CssClass="span3" placeholder="密码" Width="221px"></asp:TextBox>
            <label class="checkbox">
              <input type="checkbox"> 记住我 </input>
              <span>-</span>
              <a href=""> 忘记密码 </a>
            </label>
           <%-- <button class="btn btn-primary btn-large">登陆</button>--%>
              <asp:Button ID="BTN_Login" runat="server" Text="登录" CssClass="btn btn-primary btn-large" OnClick="BTN_Login_Click" />
            <a href="#register-card" id="to-reg-card"> 免费注册 </a>
        <%--  </form>--%>
        &nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
        </div>
              </div> 
        <div class="span4 hide" id="register-card">
         
            <p class="field-name">用户名(邮箱):</p>
          <%--  <input type="text" class="span3">--%>
              <asp:TextBox ID="TB_Reg_UserEmail" runat="server" CssClass="span3"></asp:TextBox>
           
            <p class="field-name">密码:</p>
           <%-- <input type="text" class="span3">--%>
              <asp:TextBox ID="TB_Reg_UserPassword" runat="server" CssClass="span3"></asp:TextBox>
        
            <p class="field-name">密码确认:</p>
           <asp:TextBox ID="TB_Reg_UserPasswordConfirm" runat="server" CssClass="span3"></asp:TextBox>
         
            <p class="field-name">姓名:</p>
              <asp:TextBox ID="TB_Reg_UserName" runat="server" CssClass="span3"></asp:TextBox>
              
               <p class="field-name">手机:</p>
              <asp:TextBox ID="TB_Reg_UserPhone" runat="server" CssClass="span3"></asp:TextBox>
              
                 <p class="field-name">身份证号:</p>
              <asp:TextBox ID="TB_Reg_UserIdentityNumber" runat="server" CssClass="span3"></asp:TextBox>
           <%-- <button class="btn btn-warning btn-large">注册</button>--%>
              <asp:Button ID="BTN_Register" runat="server" Text="注册"  CssClass="btn btn-warning btn-large" OnClick="BTN_Register_Click"/>
          </div>
             </form>
     

    

  </body>

</html>