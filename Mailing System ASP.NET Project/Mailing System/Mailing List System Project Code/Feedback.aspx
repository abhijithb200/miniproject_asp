<%@ Page Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <script type="text/javascript">
		
		  function ShowMessage()
    {
       
    if(document.getElementById("message").value != "")
    {
      alert(document.getElementById("message").value);
      document.getElementById("message").value = "";
      }
    }
    </script>

    <div style="background-image:url(images/feedbackbackground.png);background-size: cover;box-shadow: -2px 3px 50px -8px rgba(0,0,0,1);height:550px;margin-top:130px;border-radius:19px; margin-bottom:30px;;margin-left:200px;margin-right:50px; width: 956px;">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large"
            Height="29px" Style=" z-index: 100; left: 320px; position: absolute; top: 276px; font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 48px;
line-height: 56px;

color: #000000;
"
            Text="Feedback" Width="167px"></asp:Label>
        &nbsp;<asp:Label ID="lblfeedback" runat="server" Font-Bold="True" Font-Size="X-Large"
            Style="z-index: 101; left: 244px; position: absolute; top: 402px; width: 201px; height: 25px;font-family: Roboto;
font-style: normal;font-weight:400;font-size:18px" Text="Subject of feedback"></asp:Label>
        <asp:TextBox ID="tbxsubfeedback" runat="server" Height="19px" Style="z-index: 112;
            left: 395px; position: absolute; top: 403px; width: 189px;"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="lblemail" runat="server" Font-Bold="True" Font-Size="X-Large"
            Style="z-index: 103; left: 322px; position: absolute; top: 445px; width: 62px; font-family: Roboto;
font-style: normal;font-weight:400;font-size:18px; height: 21px;" Text="Email id"></asp:Label>
        <asp:TextBox ID="tbxemailid" runat="server" Style="z-index: 104; left: 394px;
            position: absolute; top: 446px; width: 188px; height: 19px;"></asp:TextBox>
        <asp:Label ID="lblcomment" runat="server" Font-Bold="True" Font-Size="X-Large" Style="z-index: 105;
            left: 255px; position: absolute; top: 534px; width: 125px; font-family: Roboto;
font-style: normal;font-weight:400;font-size:18px" Text="Comment/Query"></asp:Label>
        <asp:TextBox ID="tbxcomment" runat="server" Height="81px" Style="z-index: 106; left: 395px;
            position: absolute; top: 535px; width: 190px;" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Style="border-style: none; border-color: inherit; border-width: medium; z-index: 107;
            left: 358px; position: absolute; top: 657px; width: 235px; background-color:#50A8AD; color:white; height: 36px;font-size:large;border-radius:9px
        " Text="Submit" CssClass="button"/>
      
        &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" Style="z-index: 110;
            left: 344px; position: absolute; top: 492px; height: 21px; width: 39px; font-family: Roboto;
font-style: normal;font-weight:400;font-size:18px" Text="Date"></asp:Label>
        <asp:TextBox ID="tbxdate" runat="server" Style="z-index: 111; left: 395px; position: absolute;
            top: 495px; width: 189px; height: 16px;"></asp:TextBox>
        <input id="message" runat="server" style="z-index: 131; left: 54px; position: absolute;
            top: 310px" type="hidden" />
        <img src="images/feedback.png" style="width: 450px; height: 267px; left: 650px; position: absolute; top: 374px;" /><br />
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
        <br />
        <br />
    </div>
</asp:Content>

