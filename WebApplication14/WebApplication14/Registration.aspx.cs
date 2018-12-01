using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication14
{
    public partial class Registration : System.Web.UI.Page
    {
        public string cnstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if(!FileUpload1.HasFile)
            {
                Label11.Text="Fix insert image";
            }
            else if (con.State == System.Data.ConnectionState.Open)
            {

                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                string a = "insert into register(firstname,lastname,email,password,day,month,year,gender,primaryrole,profileimage)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + DropDownList2.SelectedItem.Text.ToString() + "','" + DropDownList3.SelectedItem.Text.ToString() + "','" + DropDownList4.SelectedItem.Text.ToString() + "','" + RadioButtonList2.SelectedItem.Text.ToString() + "','" + DropDownList1.SelectedItem.ToString() + "',@image)";
                SqlCommand cmd = new SqlCommand(a, con);
                cmd.Parameters.AddWithValue("@image", pic);
                cmd.ExecuteNonQuery();
                Label11.Text = "Image uploaded successfully";
                Label9.Text = "You  have successfully registered";


            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}