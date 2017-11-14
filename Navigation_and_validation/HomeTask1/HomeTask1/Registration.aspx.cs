using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;


namespace HomeTask1
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    string connectionString = ConfigurationManager.ConnectionStrings["BaseRegist"].ConnectionString;
            //    connection = new SqlConnection(connectionString);
            //    connection.Open();
            //    Response.Write(Convert.ToString(connection.State));
            //}
            //catch (Exception ex){
            //    Response.Write(Convert.ToString(ex.Message));
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string par = "";
            //if (Page.IsValid)
            //{
            //    Response.Write("Сработал обработчик в коде страницы.");
            //}
            //try
            //{
            //    SqlCommand command = new SqlCommand("insert into Registration(Login, Email,Tell, DateofBirthday,Password) values(@Login, @Email,@Tell, @DateofBirthday, @Password)",connection);
            //    command.Parameters.AddWithValue("Login", TextBox1.Text);
            //    command.Parameters.AddWithValue("Email", TextBox4.Text);
            //    command.Parameters.AddWithValue("Tell", TextBox5.Text);
            //    command.Parameters.AddWithValue("DateofBirthday", TextBox6.Text);
            //    //command.Parameters.AddWithValue("State",Null);
            //    command.Parameters.AddWithValue("Password", TextBox2.Text);
            //    command.ExecuteNonQuery();
            //}
            //catch (Exception ex) { }
        }

        protected void Page_UnLoad(object sender, EventArgs e)
        {
            //if (connection!= null && connection.State!= ConnectionState.Closed  ) {
            //    connection.Close();
            //    //Response.Write(Convert.ToString(connection.State));
            //}

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //SqlDataReader reader = null;
            //string res=null;
            //try
            //{
            //    SqlCommand command = new SqlCommand("Select * from Registration where State is Null ", connection);
            //    reader = command.ExecuteReader();
            //    while (reader.Read()) { 
            //       res=Convert.ToString(reader["State"]);            
            //    }
            //    Label1.Text = res;
               
            //}
            //catch (Exception ex) { Label1.Text = ex.Message;
            //Label1.ForeColor = Color.Red;
            //}
            //finally
            //{
            //    if (reader != null) { reader.Close(); }
            //}
            Guid ty = Guid.NewGuid();
            
            Label1.Text = Convert.ToString(ty);
            //Label1.Text = Request.QueryString["id"];
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           // Label2.Text = "dddddd";
            //try
            //{
            //    string connectionString = ConfigurationManager.ConnectionStrings["BaseRegist"].ConnectionString;
            //    connection = new SqlConnection(connectionString);
            //    connection.Open();
            //    Response.Write(Convert.ToString(connection.State));
            //}
            //catch (Exception ex)
            //{
            //    Response.Write(Convert.ToString(ex.Message));
            //}

            //try
            //{
            //    string sh = "sheva";
            //    SqlDataReader reader = null;
            //    SqlCommand command = new SqlCommand("select Login from Registration Where Login = @sh", connection);

            //    reader = command.ExecuteReader();
            //    string str = null;
            //    if(command!=null)
            //    while(reader.Read()){
            //        str = (string)reader["Login"];
            //    }
            //    ///Label2.Text = str;
                
            //}
            //catch (Exception ex) { }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int tr = 15;
            //Label3.Text = DateTime.Now.ToLongTimeString();
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Label2.Text = DateTime.Now.ToLongTimeString();
        }
    }
}