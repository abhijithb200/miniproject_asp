<%@ Page Language="C#" MasterPageFile="login.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:#096B95;margin-left:auto;margin-right:auto;width:50%">
        <asp:Label ID="Label1" runat="server" Style="z-index: 1000; left: 501px; position: absolute;
            top: 732px" Text="Emailid*"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 503px; position: absolute;
            top: 656px" Text="Gender"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 495px; position: absolute;
            top: 618px; width: 97px;" Text="Date of Birth"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 103; left: 499px; position: absolute;
            top: 483px; width: 87px;" Text="Name*"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="border-style: solid; border-color: inherit; border-width: 1px; z-index: 105;
            left: 578px; position: absolute; top: 843px; background-color:white; padding:2px; border-radius:9px; color:black; height:30px; width:80px" Text="Register" Width="68px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="border-style: solid; border-color: inherit; border-width: 1px; z-index: 106;
            left: 724px; position: absolute; top: 841px; background-color:white; padding:2px; border-radius:9px; color:black; height:27px; width:80px" Text="Cancel" Width="82px" />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="XX-Large" Style="z-index: 500;
            left: 544px; position: absolute; top: 380px; width: 248px;" Text="New Registration"></asp:Label>
        &nbsp;
        <asp:Label ID="Label5" runat="server" Style="z-index: 108; left: 499px; position: absolute;
            top: 517px; width: 84px;" Text="Last name"></asp:Label>
        &nbsp;
        &nbsp;&nbsp;
        &nbsp;
        <asp:RadioButton ID="rbtnfemale" runat="server" Style="z-index: 115; left: 703px;
            position: absolute; top: 654px; width: 47px;" Text="Female" GroupName="measurementSystem" />
        <asp:RadioButton ID="rbtnamale" runat="server" Style="z-index: 116; left: 636px;
            position: absolute; top: 653px; width: 49px; height: 63px;" Text="Male" GroupName="measurementSystem"/>
        <asp:TextBox ID="txtdob" runat="server" Style="z-index: 117; left: 630px; position: absolute;
            top: 616px; width: 157px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtdob" errormessage="Please enter your name!" />
       
        <asp:Label ID="Label7" runat="server" Style="z-index: 118; left: 498px; position: absolute;
            top: 549px; width: 105px;" Text="Password*"></asp:Label>
        <asp:TextBox ID="txtpwd" runat="server" Style="z-index: 119; left: 630px; position: absolute;
            top: 546px; width: 154px;" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtconpwd" runat="server" Style="z-index: 120; left: 629px; position: absolute;
            top: 580px; width: 156px;" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Style="z-index: 121; left: 490px; position: absolute;
            top: 589px; width: 139px; bottom: 319px; margin-bottom: 0px;" Text="Confirm Password*"></asp:Label>
        <asp:TextBox ID="txtsurname" runat="server" Style="z-index: 122; left: 630px; position: absolute;
            top: 512px; width: 153px;"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txtmailid" runat="server" Style="z-index: 123; left: 637px; position: absolute;
            top: 717px; width: 150px;"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="border-style: solid; border-color: inherit; border-width: 1px; z-index: 106;
            left: 804px; position: absolute; top: 715px; background-color:white; padding:2px; border-radius:9px; color:black; height:23px; width:87px" Text="Send OTP" />

        <asp:Label ID="Label6" runat="server" Style="z-index: 121; left: 499px; position: absolute;
            top: 791px; width: 89px; bottom: 91px;" Text="OTP"></asp:Label>
        <asp:TextBox ID="txtotp" runat="server" Style="z-index: 122; left: 637px; position: absolute;
            top: 784px; width: 153px;"></asp:TextBox>


        <asp:Label ID="otpwarning" runat="server" Style="z-index: 121; left: 638px; position: absolute;
            top: 748px; width: 296px; bottom: 373px; color:red" Text=""></asp:Label>

        <asp:Label ID="otpequal" runat="server" Style="z-index: 121; left: 638px; position: absolute;
            top: 748px; width: 296px; bottom: 373px; color:red;display:none" Text=""></asp:Label>
        <asp:Button ID="checkotp" runat="server" OnClick="Button4_Click" Style="border-style: solid; border-color: inherit; border-width: 1px; z-index: 106;
            left: 811px; position: absolute; top: 778px; background-color:white; padding:2px; border-radius:9px; color:black; height:27px; width:80px" Text="Checkotp" Width="82px" />


        
    


        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtname" runat="server" Style="z-index: 104; left: 631px; position: absolute;
            top: 479px; width: 151px;"></asp:TextBox>

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
        <br />
        <br />
        <br />
    </div>
</asp:Content>

