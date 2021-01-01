<%@ Page Language="C#" MasterPageFile="login.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center ><div style="width: 25%;background-color:#096B95;padding:30px;border-radius:9px" align ="center" >
    <table style="width: 161px">
        <tr>
            <td colspan="3" >
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>ADMIN LOGIN</strong></td>
        </tr>
        <tr>
            <td style="width: 13px">
                <asp:Label ID="Label1" runat="server" Text="ID" Width="76px"></asp:Label></td>
            <td colspan="2" style="width: 57px">
                <asp:TextBox ID="TextBox1" runat="server" Width="126px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 13px">
                <asp:Label ID="Label2" runat="server" Text="PASSWORD" Width="73px" style="padding-right:90px"></asp:Label></td>
            <td colspan="2" style="width: 57px">
                <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" Width="123px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 13px">
                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="59px" /></td>
            <td colspan="2" style="width: 57px">
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" Width="66px" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lbl_msg" runat="server" Width="203px"></asp:Label></td>
        </tr>
    </table>
    </div></center>
</asp:Content>

