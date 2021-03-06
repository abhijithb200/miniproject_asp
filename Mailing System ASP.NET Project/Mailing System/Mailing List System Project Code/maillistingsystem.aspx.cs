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
using System.Net ;
using System.Net.Mail ;
public partial class maillistingsystem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "select * from user_subject";


            string cnstr = ConfigurationSettings.AppSettings["dbconnection"];
            SqlConnection cn = new SqlConnection(cnstr);
            cn.Open();


            SqlDataAdapter da = new SqlDataAdapter(query, cn);

            DataSet ds = new DataSet();

            da.Fill(ds, "user_subject");

            dgrid.DataSource = ds;
            dgrid.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string query = "select * from user_subject where subject='" + ddlsubject.SelectedItem.Text + "'";


        string cnstr = ConfigurationSettings.AppSettings["dbconnection"];
        SqlConnection cn = new SqlConnection(cnstr);
        cn.Open();


        SqlDataAdapter da = new SqlDataAdapter(query, cn);

        DataSet ds = new DataSet();

        da.Fill(ds, "user_subject");

        dgrid.DataSource = ds;
        dgrid.DataBind();




    }
    protected void dgrid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dgrid_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (tbxbody.Text.Length > 2 || tbxsubject.Text.Length > 2)
        {


            try
            {
                DataGridItem dgi;
                int i = 0;
                string s = e.Item.Cells[1].Text.ToString();
                var fromAddress = new MailAddress("mailingsystem8@gmail.com", "Mailing List System");
                var toAddress = new MailAddress(s);
                const string fromPassword = "mailingsystem12";
                 string subject = tbxsubject.Text;
                 string body = tbxbody.Text;

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }



                Response.Write("<script>alert('Message Has Been Sent')</script>");
                e.Item.Cells[5].Text = "SENDED";
                e.Item.Cells[5].ForeColor = System.Drawing.ColorTranslator.FromHtml("green");

            }
            catch (System.Exception i)
            {
                Response.Write("<script>alert('Message  Sending Failed')</script>");
                Response.Write(i);
            }
        }
        else
        {
            Response.Write("<script>alert('Please fill subject and body')</script>");
        }
    }
}
