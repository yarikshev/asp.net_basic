using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HomeTask
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection conection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                DropDownList1.Items.Add("Учебный проект");
                DropDownList1.Items.Add("Воспитательный проект ");
                DropDownList1.Items.Add("Поза школьный проект");
                DropDownList1.Items.Add("On-line образовательный ресурс ");

                DropDownList2.Items.Add("Сайт МОН ");
                DropDownList2.Items.Add("Сайт Майкрософт Украина ");
                DropDownList2.Items.Add("Сайт сети «Партнерство в обучении»  ");
                DropDownList2.Items.Add("Osvita.com  ");                
            }
            string conectiontoString=ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conection = new SqlConnection(conectiontoString);
            conection.Open();
            string ss = Convert.ToString(conection.State);
            Response.Write(ss);
        }

        protected void Page_UnLoad(object sender, EventArgs e)
        {
            if (conection != null && conection.State != ConnectionState.Closed) {
                conection.Close();
               // Response.Write("Closed");
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           TextBox10.Text = "true1";
           if (RadioButtonList1.SelectedItem.Text == "True")
           {
               TextBox10.Text = "true";
               TextBox4.Visible = true;
           }
           else{

               TextBox4.Visible = false;
           }
            
        }

        protected void RadioButtonList1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.Text != "True") {
                TextBox4.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                try
                {
                    SqlCommand command = new SqlCommand(
"insert into Questionnaire(Fname,Surname,NameWork,NominationtWork,Aprobation,AprobatchionLevel,FullNameofOrgani,OurPosition,CityVillage,Region,Tell,Email,HowyouKnowedOus ) VALUES(@Fname, @Surname, @NameWork, @NominationtWork, @Aprobation, @AprobatchionLevel, @FullNameofOrgani, @OurPosition, @CityVillage, @Region, @Tell, @Email, @HowyouKnowedOus)"
, conection);
                    command.Parameters.AddWithValue("Fname",TextBox1.Text);
                    command.Parameters.AddWithValue("Surname", TextBox2.Text);
                    command.Parameters.AddWithValue("NameWork", DropDownList1.SelectedItem.Text);
                    command.Parameters.AddWithValue("NominationtWork", TextBox1.Text);
                    command.Parameters.AddWithValue("Aprobation", RadioButtonList1.SelectedItem.Text);
                    command.Parameters.AddWithValue("AprobatchionLevel", TextBox4.Text);
                    command.Parameters.AddWithValue("FullNameofOrgani", TextBox5.Text);
                    command.Parameters.AddWithValue("OurPosition", TextBox6.Text);
                    command.Parameters.AddWithValue("CityVillage", TextBox7.Text);
                    command.Parameters.AddWithValue("Region", TextBox8.Text);
                    command.Parameters.AddWithValue("Tell", TextBox9.Text);
                    command.Parameters.AddWithValue("Email", TextBox10.Text);
                    command.Parameters.AddWithValue("HowyouKnowedOus", DropDownList1.SelectedItem.Text);
                    command.ExecuteNonQuery();

                }
                catch(Exception ex) {
                    Response.Write(Convert.ToString(ex.Message));
                }
                
            }
            else {

                // Добавление в ответ пользователю тега скрипт, в котором с помощью javascript функции alert выводиться сообщение.
                string script = string.Format("alert('Exception');");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "MessageBox", script, true);
            }
        }
    }
}