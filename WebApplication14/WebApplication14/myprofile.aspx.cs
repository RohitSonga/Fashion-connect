using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
namespace WebApplication14
{
    public partial class myprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter ada = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                result.Visible = false;

            }
           /* if (Session["user"] != null)
            {
                Response.Redirect("login.aspx");

            }
            else*/
                
                con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True";
            con.Open();
            showdata();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        public void showdata()
        {
            cmd.CommandText = "select * from register where email='" + Session["user"] + "' ";
            cmd.Connection = con;
            ada.SelectCommand = cmd;
            ada.Fill(ds, "register");
            Label3.Text = ds.Tables[0].Rows[0]["firstname"].ToString() +"&nbsp"+ ds.Tables[0].Rows[0]["lastname"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["email"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["gender"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["primaryrole"].ToString();
            cmd.CommandText = "select profileimage from register where email='" + Session["user"] + "' ";
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                while(dr.Read())
                {
                    byte[] imgd = (byte[])dr["profileimage"];
                    string image = Convert.ToBase64String(imgd, 0 ,imgd.Length);
                    Image1.ImageUrl = "data:image/png;base64," +image;


                }


            }

            con.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            con.Open();
            cmd.CommandText = "select * from register where firstname='" + TextBox1.Text + "' ";
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read();
            if(recordfound)
            {
                result.Visible = true;
                Label7.Text = "Record found";
                Label7.ForeColor = System.Drawing.Color.Green;
                Label13.Text = dr["firstname"].ToString() + dr["lastname"].ToString();
                Label14.Text = dr["email"].ToString();
                Label15.Text = dr["gender"].ToString();
                Label16.Text = dr["primaryrole"].ToString();

            }

            else
            {

                result.Visible = false;
                Label7.Text = "Record not found";
                Label7.ForeColor = System.Drawing.Color.Red;
            }
            
            
            con.Close();
        }
    }
}