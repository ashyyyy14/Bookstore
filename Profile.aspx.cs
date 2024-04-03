using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblusernameValue.Text = Session["username"].ToString();

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            string cs = WebConfigurationManager.ConnectionStrings["projectConnectionString"].ConnectionString;
            SqlConnection myconn = new SqlConnection(cs);
            string cmd = "Delete from Inventory where Username=@username";
            SqlCommand cmd1 = new SqlCommand(cmd, myconn);
            cmd1.Parameters.AddWithValue("@username", lblusernameValue.Text);
            int added = 0;
            try
            {
                myconn.Open();
                added = cmd1.ExecuteNonQuery();
                ans.Text = "Profile Deleted";
            }
            catch(Exception err)
            {
                ans.Text= err.Message;
            }
            finally
            {
                myconn.Close();
            }

        }
        }
    }