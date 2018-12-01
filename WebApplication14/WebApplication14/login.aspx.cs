using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication14
{
    public partial class login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter ada = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (Session["user"] != null)
            {
                Response.Redirect("myprofile.aspx");

            }*/
            
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True";
            con.Open();
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            string user = TextBox1.Text.Trim();
            string pass = TextBox2.Text.Trim();
            cmd.CommandText = "select * from register where email='" +TextBox1.Text +"' and password='"+TextBox2.Text+"'";
            cmd.Connection = con;
            ada.SelectCommand = cmd;
            ada.Fill(ds, "register");
            if(ds.Tables[0].Rows.Count >0)
            {
                Session["user"] = user;
                alert.Text = " Data found and login succesfully";
                Response.Redirect("myprofile.aspx");
            }
           

           else  if(TextBox1.Text=="" && TextBox2.Text=="")
            { 
                alert.Text = "Empty username or password";

            }
           
            else
            {
                alert.Text = "Invalid Data";
            }

        }
    }
}