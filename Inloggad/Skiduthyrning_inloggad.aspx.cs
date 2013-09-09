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

public partial class Inloggad_Skiduthyrning_inloggad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlCommand dbCommand;

        ConnectionStringSettings cs;
        cs = ConfigurationManager.ConnectionStrings["ProjektdatabasConnectionString"];
        String connString = cs.ConnectionString;
        System.Data.SqlClient.SqlConnection dbConnection = new System.Data.SqlClient.SqlConnection(connString);
        dbConnection.Open();
        dbCommand = dbConnection.CreateCommand();

        MembershipUser user = Membership.GetUser();

        if (user != null)
        {
        if (TextBox1.Text != "")
        {

            string anvnamn = Membership.GetUser().ToString();
            string text1 = TextBox1.Text;
            DateTime dag1 = DateTime.ParseExact(@text1, "yyyy-MM-dd", null);

            if (DropDownList1.SelectedValue != "Ej vald")
            {
                int nrSkidor = Convert.ToInt32(DropDownList1.SelectedValue);
                int nrPjäxor = Convert.ToInt32(DropDownList2.SelectedValue);
                int nrStavar = Convert.ToInt32(DropDownList3.SelectedValue);
                int nrHjälmar = Convert.ToInt32(DropDownList4.SelectedValue);

                dbCommand.CommandText = "INSERT INTO Bokning_Skidor (Datum, Skidor, Pjäxor, Stavar, Hjälm, Namn) Values (@dag, @skidor, @pjäxor, @stavar, @hjälmar, @namn)";
                dbCommand.Parameters.Add("@dag", @dag1);
                dbCommand.Parameters.Add("@skidor", @nrSkidor);
                dbCommand.Parameters.Add("@pjäxor", @nrPjäxor);
                dbCommand.Parameters.Add("@stavar", @nrStavar);
                dbCommand.Parameters.Add("@hjälmar", @nrHjälmar);
                dbCommand.Parameters.Add("@namn", @anvnamn);
                dbCommand.ExecuteNonQuery();
                dbConnection.Close();
                Response.Redirect("Validera.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Du måste välja ett av alternativen i dropdown-menyn för skidor och fylla i datumfältet innan du bokar!";
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Du måste välja ett av alternativen i dropdown-menyn för skidor och fylla i datumfältet innan du bokar!";
        }
        }
        else
        {
            Label1.Text = "Du måste vara inloggad för att kunna genomföra bokningen.";
        }
    }
}
