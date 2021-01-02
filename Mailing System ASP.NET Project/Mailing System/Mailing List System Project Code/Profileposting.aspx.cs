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

public partial class userhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          if (!IsPostBack) 
        {
            tbxdate.Text = System.DateTime.Now.ToShortDateString();
            string id = (string)Session["user"];
            string email = (string)Session["user_email"];
            string name = (string)Session["user_name"];
            if (id != null)
            {
                topname.Text = name;
                topemail.Text = email;
                tbxregid.Text = id;
                tbxregid.ReadOnly = true;
                tbxemailid.Text = email;
                tbxemailid.ReadOnly = true;
            }
            else
            {
                Response.Redirect("userlogin.aspx");
            }
        }
       
    }
protected void  CheckBox1_CheckedChanged(object sender, EventArgs e)
{

}
protected void  Button1_Click(object sender, EventArgs e)
{
        
        if (CheckBox1.Checked)
        {


            string filename = FileUpload1.FileName;
            string destr = Server.MapPath("~/Mailing System/Mailing List System Project Code/upload");
            string destpath = System.IO.Path.Combine(destr, filename);
            FileUpload1.PostedFile.SaveAs(destpath);
            string ddff=FileUpload1 .FileName .ToString ();

           // string query = "insert into user_subject values('" + tbxregid.Text + "','" +tbxemailid.Text+ "','"+tbxdate.Text+"','"+ddlsubject.SelectedItem.Text+"','"+destpath+ "','"+ FileUpload1 .FileName .ToString () +"')";

            string cnstr = ConfigurationManager.AppSettings["dbconnection"].ToString();

            SqlConnection cn = new SqlConnection(cnstr);
            cn.Open();

            SqlCommand cmd = new SqlCommand("insert into user_subject values(" +Int32.Parse( tbxregid.Text) + ",'" + tbxemailid.Text + "','" + tbxdate.Text + "','" + ddlsubject.SelectedValue.ToString()+ "','" + destpath + "','" + FileUpload1.FileName.ToString() + "')", cn);
            cmd.ExecuteNonQuery();
        }


        Response.Write("<script>alert('Information Posted Sucessfully')</script>");
}
} 