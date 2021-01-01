<%@ Page Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="onlineview.aspx.cs" Inherits="onlineview" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="details" Font-Bold="False"
        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
        ForeColor="Black" GridLines="None" Height="96px" OnItemCommand="DataGrid1_ItemCommand"
        OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" Style="z-index: 101;
        left: 331px; position: absolute; top: 288px" Width="612px" >
        <Columns>
            <asp:TemplateColumn></asp:TemplateColumn>
            <asp:ButtonColumn DataTextField="comment"></asp:ButtonColumn>
            <asp:BoundColumn DataField="subfeedback"></asp:BoundColumn>
            <asp:BoundColumn DataField="emailid"></asp:BoundColumn>
            <asp:BoundColumn DataField="date"></asp:BoundColumn>
            <asp:BoundColumn DataField="comment"></asp:BoundColumn>
        </Columns>
    </asp:DataGrid>
<script type="text/javascript" >
      
        
         
             function  OpenDialog(a)
   {
     
    window.showModalDialog("feedbackreply.aspx?data="+a, "Dialog Arguments Value", "dialogHeight: 500px; dialogWidth: 500px; dialogTop: 300px; dialogLeft: 350px; edge: Raised; center: Yes; help: Yes; resizable: No; status: No;");
   }
         
</script>


    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Style="z-index: 103;
        left: 332px; position: absolute; top: 193px;color:white" Text="Feedbacks" Width="188px" ></asp:Label>
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

