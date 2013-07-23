<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/MuBan.Master" AutoEventWireup="true" CodeBehind="SellHouse_second.aspx.cs" Inherits="HomeManagementSystem2.SellHouse_second" %>
<%@ Reference Page = "SellHouse_first.aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link  href="css/Wrapper.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper-background-green-border-grey">

       
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="华文细黑" Text="我的房子:"></asp:Label>
&nbsp;<asp:Label ID="Jianjie" runat="server" Text="Jianjie"></asp:Label>

       
        <br />

       
    </div>
        <asp:Image ID="Image5" runat="server" Height="37px" ImageUrl="~/Resources/20130722170040_1788.png" Width="327px" />
       <div class="wrapper-border-grey">


           <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center">
               <ItemTemplate>
                   <table>
                       <tr>
                           <td><img src="ss"/></td>
                           <td><span>
                               <asp:Label ID="person_id" runat="server" Text="Label"></asp:Label>
                               </span></td>
                            <td><span>
                                <asp:Label ID="profession" runat="server" Text="Label"></asp:Label>
                               </span></td>
                       </tr>
                   </table>
               </ItemTemplate>
           </asp:DataList>


       </div>

</asp:Content>
