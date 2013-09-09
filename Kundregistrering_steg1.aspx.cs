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

public partial class Kundregistrering : System.Web.UI.Page
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

        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
        {
            string förnamn = TextBox1.Text;
            string efternamn = TextBox2.Text;
            string användarnamn = TextBox3.Text;
            string address = TextBox4.Text;
            string nummer = TextBox5.Text;

            dbCommand.CommandText = "INSERT INTO Kunder (Användarnamn, Förnamn, Efternamn, Address, Telefonnummer) Values (@anv, @fnamn, @enamn, @addr, @tel)";
            dbCommand.Parameters.Add("@anv", @användarnamn);
            dbCommand.Parameters.Add("@fnamn", @förnamn);
            dbCommand.Parameters.Add("@enamn", @efternamn);
            dbCommand.Parameters.Add("@addr", @address);
            dbCommand.Parameters.Add("@tel", @nummer);
            dbCommand.ExecuteNonQuery();
            dbConnection.Close();
            Response.Redirect("Kundregistrering_steg2.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Du har glömt att fylla i ett eller flera av fälten ovan. Var vänlig fyll i alla fält.";
        }
    }
}
