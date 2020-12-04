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
public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = null;
        SqlDataAdapter da = null;
        DataSet ds = null;
        string user, pwd = null;
        int flag = 0;

        try
        {

            string cnstr = ConfigurationSettings.AppSettings["dbconnection"];
            cn = new SqlConnection(cnstr);
            cn.Open();
            da = new SqlDataAdapter("select adminuser, adminpwd from adminusers", cn);
            ds = new DataSet();

            da.Fill(ds, "adminusers");

            user = TextBox1 .Text ;
            pwd = txt_pwd .Text ;




            foreach (DataRow drm in ds.Tables["adminusers"].Rows)
            {
                if (user.Equals(drm["adminuser"].ToString()) && pwd.Equals(drm["adminpwd"].ToString()))
                    flag = 1;
            }


            if (flag == 1)
            {
                Session["admin"] = user;
                Response.Redirect("adminhome.aspx");
            }


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        finally
        {
            cn.Close();

        }

    }
}
