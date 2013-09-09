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

public partial class Inloggad_Snöskoter_inloggad : System.Web.UI.Page
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

            if (DropDownList1.SelectedValue != "Ej vald")
            {
                if (TextBox1.Text != "")
                {
                    string anvnamn = Membership.GetUser().ToString();
                    string text1 = TextBox1.Text;
                    DateTime dag1 = DateTime.ParseExact(@text1, "yyyy-MM-dd", null);

                    if (DropDownList1.SelectedValue == "1")
                    {
                        dbCommand.CommandText = "INSERT INTO Bokning_snöskoter (Datum, Antal, Namn) Values (@dag, 1, @namn)";
                        dbCommand.Parameters.Add("@dag", @dag1);
                        dbCommand.Parameters.Add("@namn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");
                    }
                    else if (DropDownList1.SelectedValue == "2")
                    {
                        dbCommand.CommandText = "INSERT INTO Bokning_snöskoter (Datum, Antal, Namn) Values (@dag, 2, @namn)";
                        dbCommand.Parameters.Add("@dag", @dag1);
                        dbCommand.Parameters.Add("@namn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");
                    }
                    else if (DropDownList1.SelectedValue == "3")
                    {
                        dbCommand.CommandText = "INSERT INTO Bokning_snöskoter (Datum, Antal, Namn) Values (@dag, 3, @namn)";
                        dbCommand.Parameters.Add("@dag", @dag1);
                        dbCommand.Parameters.Add("@namn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");
                    }
                    else if (DropDownList1.SelectedValue == "4")
                    {
                        dbCommand.CommandText = "INSERT INTO Bokning_snöskoter (Datum, Antal, Namn) Values (@dag, 4, @namn)";
                        dbCommand.Parameters.Add("@dag", @dag1);
                        dbCommand.Parameters.Add("@namn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");
                    }
                    else if (DropDownList1.SelectedValue == "5")
                    {
                        dbCommand.CommandText = "INSERT INTO Bokning_snöskoter (Datum, Antal, Namn) Values (@dag, 5, @namn)";
                        dbCommand.Parameters.Add("@dag", @dag1);
                        dbCommand.Parameters.Add("@namn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");
                    }
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Du måste välja ett av alternativen i dropdown-menyn och fylla i alla fält innan du bokar!";
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Du måste välja ett av alternativen i dropdown-menyn och fylla i alla fält innan du bokar!";

            }
        }
        else
        {
            Label1.Text = "Du måste vara inloggad för att kunna genomföra bokningen.";
        }
    }
}
