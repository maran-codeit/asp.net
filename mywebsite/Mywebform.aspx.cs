using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace mywebsite
{
    public partial class Mywebform : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mydb1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            disp_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into mytable values('" + Username.Text + "','" + Password.Text + "','" + City.Text + "')";
            cmd.ExecuteNonQuery();

            Username.Text = "";
            Password.Text = "";
            City.Text = "";

            
        }

        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from mytable";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from mytable where username='" + Username.Text + "'";
            cmd.ExecuteNonQuery();

            Username.Text = "";
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update mytable set Username= '" + Username.Text + "',Password= '" + Password.Text + "',City= '" + City.Text + "' where id=" + Convert.ToInt32(oldid.Text) + "";
            cmd.ExecuteNonQuery();

            Username.Text = "";
            Password.Text = "";
            City.Text = "";

            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            disp_data();
        }
    }
}