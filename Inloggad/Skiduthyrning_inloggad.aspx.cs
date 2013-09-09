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
                int nrPj�xor = Convert.ToInt32(DropDownList2.SelectedValue);
                int nrStavar = Convert.ToInt32(DropDownList3.SelectedValue);
                int nrHj�lmar = Convert.ToInt32(DropDownList4.SelectedValue);

                dbCommand.CommandText = "INSERT INTO Bokning_Skidor (Datum, Skidor, Pj�xor, Stavar, Hj�lm, Namn) Values (@dag, @skidor, @pj�xor, @stavar, @hj�lmar, @namn)";
                dbCommand.Parameters.Add("@dag", @dag1);
                dbCommand.Parameters.Add("@skidor", @nrSkidor);
                dbCommand.Parameters.Add("@pj�xor", @nrPj�xor);
                dbCommand.Parameters.Add("@stavar", @nrStavar);
                dbCommand.Parameters.Add("@hj�lmar", @nrHj�lmar);
                dbCommand.Parameters.Add("@namn", @anvnamn);
                dbCommand.ExecuteNonQuery();
                dbConnection.Close();
                Response.Redirect("Validera.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Du m�ste v�lja ett av alternativen i dropdown-menyn f�r skidor och fylla i datumf�ltet innan du bokar!";
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Du m�ste v�lja ett av alternativen i dropdown-menyn f�r skidor och fylla i datumf�ltet innan du bokar!";
        }
        }
        else
        {
            Label1.Text = "Du m�ste vara inloggad f�r att kunna genomf�ra bokningen.";
        }
    }
}
