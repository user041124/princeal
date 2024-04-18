using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication88
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=c:\users\srcadmin\documents\visual studio 2012\Projects\WebApplication88\WebApplication88\App_Data\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * FROM DTable WHERE Username = @Username and Password = @Password",con);
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("WebForm3.aspx");
            }
            else
            {
                Label1.Text = "Invalid Credential";
            }
        }
    }
}