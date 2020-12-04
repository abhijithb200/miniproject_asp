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
public partial class userlogin : System.Web.UI.Page
{
    SqlConnection cn = null;
    SqlDataAdapter da = null;
    DataSet ds = null;
    string cs, user, pwd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        try
        {



            string cnstr = ConfigurationSettings.AppSettings["dbconnection"];

            cn = new SqlConnection(cnstr);

            cn.Open();
            da = new SqlDataAdapter("select emailid,regid,password from newregistration", cn);
            ds = new DataSet();
            da.Fill(ds, "newregistration");
            user = TextBox1.Text;
            pwd = txt_pwd.Text;
            
           

            foreach (DataRow drm in ds.Tables["newregistration"].Rows)
            {
                if (user.Equals(drm["emailid"].ToString()) && pwd.Equals(drm["password"].ToString()))
                    flag = 1;
                Session["user"] = drm["regid"].ToString();
            }
            if (flag == 1)
            {
                
                Response.Redirect("userhome.aspx");
                
            }
            else
            {
                lbl_msg.Text = "Invalid ID and Password";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        txt_pwd.Text = "";
    }
}
