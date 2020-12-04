<%@ Page Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="masterentry.aspx.cs" Inherits="masterentry" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <script  type="text/javascript">
		
		  function ShowMessage()
    {
       
    if(document.getElementById("message").value != "")
    {
      alert(document.getElementById("message").value);
      document.getElementById("message").value = "";
      }
    }
    </script>

    &nbsp;<input id="message" runat="server" type="hidden" /><br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 279px; position: absolute;
        top: 360px" Text="ID"></asp:Label>
    <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 223px; position: absolute;
        top: 633px" Text="Other Details"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 193px; position: absolute;
        top: 596px" Text="Alternate Email ID"></asp:Label>
    <asp:Label ID="Label4" runat="server" Style="z-index: 103; left: 249px; position: absolute;
        top: 551px" Text="Email ID"></asp:Label>
    <asp:Label ID="Label5" runat="server" Style="z-index: 104; left: 255px; position: absolute;
        top: 514px" Text="Gender"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 105; left: 238px; position: absolute;
        top: 477px" Text="Birth Date"></asp:Label>
    <asp:Label ID="Label7" runat="server" Style="z-index: 106; left: 250px; position: absolute;
        top: 438px" Text="Surname"></asp:Label>
    <asp:Label ID="Label8" runat="server" Style="z-index: 107; left: 266px; position: absolute;
        top: 400px" Text="Name"></asp:Label>
    <asp:TextBox ID="tbxregid" runat="server" Style="z-index: 108; left: 314px; position: absolute;
        top: 359px"></asp:TextBox>
    <asp:TextBox ID="tbxotherdetails" runat="server" Height="73px" Style="z-index: 109;
        left: 318px; position: absolute; top: 631px" TextMode="MultiLine"></asp:TextBox>
    <asp:TextBox ID="tbxalternateemail" runat="server" Style="z-index: 110; left: 316px;
        position: absolute; top: 589px"></asp:TextBox>
    <asp:TextBox ID="tbxemailid" runat="server" Style="z-index: 111; left: 316px; position: absolute;
        top: 550px"></asp:TextBox>
    <asp:TextBox ID="tbxgender" runat="server" Style="z-index: 112; left: 314px; position: absolute;
        top: 511px"></asp:TextBox>
    <asp:TextBox ID="tbxdob" runat="server" Style="z-index: 113; left: 315px; position: absolute;
        top: 477px"></asp:TextBox>
    <asp:TextBox ID="tbxsurname" runat="server" Style="z-index: 114; left: 315px; position: absolute;
        top: 437px"></asp:TextBox>
    <asp:TextBox ID="tbxname" runat="server" Style="z-index: 115; left: 314px; position: absolute;
        top: 399px"></asp:TextBox>
    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Style="z-index: 116;
        left: 583px; position: absolute; top: 476px" Text="Cancel" />
    <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Style="z-index: 118;
        left: 582px; position: absolute; top: 422px" Text="Save" Width="60px" />
    <asp:Button ID="btnedit" runat="server" OnClick="btnedit_Click1" Style="z-index: 119;
        left: 583px; position: absolute; top: 378px" Text="Edit" Width="60px" />
    <asp:Button ID="btnfind" runat="server" OnClick="btnfind_Click" Style="z-index: 120;
        left: 586px; position: absolute; top: 576px" Text="Find" Width="63px" />
    <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" OnClientClick="return confirm('are u sure to delete')"
        Style="z-index: 121; left: 584px; position: absolute; top: 525px" Text="Delete"
        Width="61px" />
    <asp:Button ID="btnclear" runat="server" OnClick="btnclear_Click" Style="z-index: 125;
        left: 584px; position: absolute; top: 628px" Text="Clear" Width="65px" />
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
    <asp:DataGrid ID="dgrid" runat="server" AutoGenerateColumns="False" DataKeyField="regid"
        OnItemCommand="dgrid_ItemCommand" Style="z-index: 122; left: 24px; position: absolute;
        top: 734px" Width="756px">
        <Columns>
            <asp:BoundColumn DataField="regid" HeaderText="Register ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
            <asp:BoundColumn DataField="surname" HeaderText="Surname"></asp:BoundColumn>
            <asp:BoundColumn DataField="dob" HeaderText="DateOfBirth"></asp:BoundColumn>
            <asp:BoundColumn DataField="gender" HeaderText="Gender"></asp:BoundColumn>
            <asp:BoundColumn DataField="emailid" HeaderText="Email ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="alternateemailid" HeaderText="Alternate Email ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="otherdetails" HeaderText="Other Details"></asp:BoundColumn>
            <asp:ButtonColumn CommandName="Select" Text="Select"></asp:ButtonColumn>
        </Columns>
    </asp:DataGrid>
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

