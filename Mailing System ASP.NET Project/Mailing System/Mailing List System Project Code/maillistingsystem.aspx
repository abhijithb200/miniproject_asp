<%@ Page Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="maillistingsystem.aspx.cs" Inherits="maillistingsystem" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="ddlsubject" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
        Style="z-index: 103; left: 414px; position: absolute; top: 359px" Width="123px">
        <asp:ListItem Value="Java"></asp:ListItem>
        <asp:ListItem Value=".Net"></asp:ListItem>
        <asp:ListItem Value="Oracle"></asp:ListItem>
        <asp:ListItem Value="C,C++"></asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 104; left: 244px;
        position: absolute; top: 360px" Text="Select your requirement"></asp:Label>
    <asp:DataGrid ID="dgrid" runat="server" AutoGenerateColumns="False" CellPadding="4"
        ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dgrid_SelectedIndexChanged"
        Style="z-index: 105; left: 195px; position: absolute; top: 460px" OnItemCommand="dgrid_ItemCommand">
        <Columns>
            <asp:BoundColumn DataField="regid" HeaderText="Reg ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="emailid" HeaderText="Email ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="date" HeaderText="Date"></asp:BoundColumn>
            <asp:BoundColumn DataField="subject" HeaderText="Subject"></asp:BoundColumn>
            <%--<asp:HyperLinkColumn DataNavigateUrlField="resumepath" DataNavigateUrlFormatString="read.aspx?resumepath={0}"
                        DataTextField="resumepath" HeaderText="FileName"></asp:HyperLinkColumn>--%>
            <asp:TemplateColumn HeaderText="Files List">
                <ItemTemplate>
                    <asp:HyperLink ID="h1" runat="server" NavigateUrl='<%# "~/upload/" + Eval("path") %>'
                        Target="_blank" Text='<%# Eval("path") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <ItemTemplate>
                    <asp:LinkButton runat="server" OnClientClick="OpenDialog()"> Send Mail </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditItemStyle BackColor="#2461BF" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    </asp:DataGrid>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 107;
        left: 361px; position: absolute; top: 737px" Text="Main menu" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

