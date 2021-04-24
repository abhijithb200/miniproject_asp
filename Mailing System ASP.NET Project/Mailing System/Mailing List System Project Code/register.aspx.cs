using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Style["opacity"] = "0.5";
        Button1.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (txtname.Text.Length >3 && txtpwd.Text.Length >3 )
        {

            string gender;
            if (rbtnamale.Checked)
                gender = "male";
            else
                gender = "female";





            string cnstr = ConfigurationSettings.AppSettings["dbconnection"];

            SqlConnection cn = new SqlConnection(cnstr);

            string str = "insert into newregistration values('" + txtname.Text + "','" + txtsurname.Text + "','" + txtpwd.Text + "','" + txtconpwd.Text + "','" + txtdob.Text + "','" + gender + "','" + txtmailid.Text + "') ";
            SqlCommand cmd = new SqlCommand(str, cn);
            cn.Open();
            cmd.ExecuteNonQuery();

            Session["newregistration"] = txtmailid.Text;

            Response.Write("<script>alert('inserted')</script>");


            cn.Close();
            Response.Redirect("userlogin.aspx");

        }
        else
        {
            Response.Write("<script>alert('Required selected fields')</script>");
        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int min = 1000;
        int max = 9999;
        Random rdm = new Random();
        int Random = rdm.Next(min, max);
        otpequal.Text = Random.ToString();

        if(txtmailid.Text.Length >= 2 && Button3.Text !="Resend")
        {
            try
            {

                var fromAddress = new MailAddress("mailingsystem8@gmail.com", "Mailing List System");
                var toAddress = new MailAddress(txtmailid.Text, "Abhinand");
                const string fromPassword = "mailingsystem12";
                const string subject = "OTP for the mailing sytem";
                string body = "The otp for the mailing system is <br> <h1>" + Random + "</h1>";

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword),

                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body,
                    IsBodyHtml = true
                })
                {
                    smtp.Send(message);
                }



                otpwarning.Text = "Message has been send.Check your email ";
                Button3.Text = "Resend";
                

            }
            
            catch (System.Exception i)
            {
                Response.Write("<script>alert('Message  Sending Failed')</script>");
                Response.Write(i);
            }
        }else if (Button3.Text == "Resend")
        {
            txtmailid.Text = " ";
            Button3.Text = "Send OTP";
            otpwarning.Text = "";
            txtotp.Text = "";
        }
        else
        {
            otpwarning.Text = "*Enter the email";
        }
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (txtotp.Text == otpequal.Text)
        {
            Button1.Style["opacity"] = "1";
            Button1.Enabled = true;
            Button1.Text = "Proceed";
        }
        else if(txtotp.Text != otpequal.Text)
        {
            Response.Write("<script>alert('Recheck the otp once more.')</script>");
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Response.Write("<script>alert('timer')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userlogin.aspx");
    }
}
