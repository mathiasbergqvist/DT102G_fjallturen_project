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

public partial class Inloggad_Stugdetaljer_inloggad : System.Web.UI.Page
{
    protected DataSet dsBookings;

    protected void Page_Load(object sender, EventArgs e)
    {
        string Namn = Request["Namn"];

        if (Namn == "Stuga1" || Namn == "Stuga2" || Namn == "Stuga3" || Namn == "Stuga4" || Namn == "Stuga5")
        {
            Image1.ImageUrl = "~/Bilder/Egen_stuga_invändigt.jpg";
            Image2.ImageUrl = "~/Bilder/Egen_stuga_utvändigt.jpg";
        }
        else if (Namn == "Inhyrd1")
        {
            Image1.ImageUrl = "~/Bilder/stuga_75_kvm_invändigt.jpg";
            Image2.ImageUrl = "~/Bilder/stuga_75_kvm_utvändigt.jpg";
        }
        else if (Namn == "Inhyrd2")
        {
            Image1.ImageUrl = "~/Bilder/stuga_24_kvm_invändigt.jpg";
            Image2.ImageUrl = "~/Bilder/stuga_24_kvm_utvändigt.jpg";
        }
        else if (Namn == "Inhyrd3")
        {
            Image1.ImageUrl = "~/Bilder/parstuga_invändigt.jpg";
            Image2.ImageUrl = "~/Bilder/parstuga.jpg";
        }
        else if (Namn == "Inhyrd4")
        {
            Image1.ImageUrl = "~/Bilder/parstuga_invändigt.jpg";
            Image2.ImageUrl = "~/Bilder/parstuga.jpg";
        }
        else if (Namn == "Inhyrd5")
        {
            Image1.ImageUrl = "~/Bilder/stuga_84_kvm_invändigt.jpg";
            Image2.ImageUrl = "~/Bilder/stuga_84_kvm_utvändigt.jpg";
        }
        else if (Namn == "Inhyrd6")
        {
            Image1.ImageUrl = "~/Bilder/stuga_21_kvm_invändigt.jpg";
            Image2.ImageUrl = "~/Bilder/stuga_21_kvm_utvändigt.jpg";
        }

        if (!IsPostBack)
        {
            Calendar1.VisibleDate = DateTime.Today;
            FillBookingsDataset();

        }
    }

    protected void FillBookingsDataset()
    {
        DateTime firstDate = new DateTime(Calendar1.VisibleDate.Year,
            Calendar1.VisibleDate.Month, 1);
        DateTime lastDate = GetFirstDayOfNextMonth();
        dsBookings = GetCurrentMonthData(firstDate, lastDate);
    }

    protected DateTime GetFirstDayOfNextMonth()
    {
        int monthNumber, yearNumber;
        if (Calendar1.VisibleDate.Month == 12)
        {
            monthNumber = 1;
            yearNumber = Calendar1.VisibleDate.Year + 1;
        }
        else
        {
            monthNumber = Calendar1.VisibleDate.Month + 1;
            yearNumber = Calendar1.VisibleDate.Year;
        }
        DateTime lastDate = new DateTime(yearNumber, monthNumber, 1);
        return lastDate;
    }

    protected DataSet GetCurrentMonthData(DateTime firstDate, DateTime lastDate)
    {
        String StugaNamn = Request["Namn"];

        DataSet dsMonth = new DataSet();
        ConnectionStringSettings cs;
        cs = ConfigurationManager.ConnectionStrings["ProjektdatabasConnectionString"];
        String connString = cs.ConnectionString;
        System.Data.SqlClient.SqlConnection dbConnection = new System.Data.SqlClient.SqlConnection(connString);
        String query;
        query = "SELECT Datum FROM Stugbokning WHERE Stugnamn = @namn AND Datum >= @firstDate AND Datum < @lastDate";
        System.Data.SqlClient.SqlCommand dbCommand = new System.Data.SqlClient.SqlCommand(query, dbConnection);
        dbCommand.Parameters.Add("@namn", @StugaNamn);
        dbCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@firstDate", firstDate));
        dbCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@lastDate", lastDate));

        System.Data.SqlClient.SqlDataAdapter sqlDataAdapter = new System.Data.SqlClient.SqlDataAdapter(dbCommand);
        try
        {
            sqlDataAdapter.Fill(dsMonth);
        }
        catch { }
        return dsMonth;
        
    }

    protected void Calendar1_DayRender1(object sender, DayRenderEventArgs e)
    {
        DateTime nextDate;
        if (dsBookings != null)
        {
            if (dsBookings.Tables.Count != 0)
            {
                foreach (DataRow dr in dsBookings.Tables[0].Rows)
                {
                    nextDate = (DateTime)dr["Datum"];
                    if (nextDate == e.Day.Date)
                    {
                        e.Cell.BackColor = System.Drawing.Color.Red;
                        e.Cell.BorderColor = System.Drawing.Color.Black;
                        e.Cell.BorderStyle = BorderStyle.Solid;
                        e.Cell.BorderWidth = 1;
                    }

                }
            }
        }
    }

    protected void Calendar1_VisibleMonthChanged1(object sender, MonthChangedEventArgs e)
    {
        FillBookingsDataset();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Ej vald")
        {
            {
                Label1.Text = "Välj ett av elternativen i Dropdown-menyn.";
                
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox6.Visible = false;
                TextBox7.Visible = false;

                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;

                Label9.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;
                Label12.Visible = false;
                Label13.Visible = false;
                Label14.Visible = false;
                Label15.Visible = false;
            }
        }
        else if (DropDownList1.SelectedValue == "7")
        {
            Label1.Text = "Du har valt 7 dagar.";

            Button1.Visible = true;

            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;

            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;

            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;
        }
        else if (DropDownList1.SelectedValue == "4")
        {
            Label1.Text = "Du har valt 4 dagar.";

            Button1.Visible = true;

            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;

            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;

            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "3")
        {
            Label1.Text = "Du har valt 3 dagar.";

            Button1.Visible = true;
            
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;

            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;

            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "2")
        {
            Label1.Text = "Du har valt 2 dagar.";

            Button1.Visible = true;
            
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;

            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;

            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "1")
        {
            Label1.Text = "Du har valt 1 dag";

            Button1.Visible = true;
            
            TextBox1.Visible = true;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;

            Label2.Visible = true;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;

            Label9.Visible = true;
            Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string bokningsNamn = Request["Namn"];

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
                if (DropDownList1.SelectedValue == "1")
                {
                    Label16.Visible = false;

                    if (TextBox1.Text != "")
                    {
                        string anvnamn = Membership.GetUser().ToString();
                        string text1 = TextBox1.Text;
                        DateTime dag1 = DateTime.ParseExact(@text1, "yyyy-MM-dd", null);


                        dbCommand.CommandText = "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@inloggnamn, @dag, @namn)";
                        dbCommand.Parameters.Add("@dag", @dag1);
                        dbCommand.Parameters.Add("@namn", @bokningsNamn);
                        dbCommand.Parameters.Add("@inloggnamn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");

                    }
                    else
                    {
                        Label16.Visible = true;
                        Label16.Text = "Du måste välja ett av alternativen i dropdown-menyn och fylla i alla fält innan du bokar!";
                    }

                }
                else if (DropDownList1.SelectedValue == "2")
                {
                    Label16.Visible = false;

                    if (TextBox1.Text != "" && TextBox2.Text != "")
                    {

                        string anvnamn = Membership.GetUser().ToString();
                        string text1 = TextBox1.Text;
                        DateTime dag1 = DateTime.ParseExact(@text1, "yyyy-MM-dd", null);
                        string text2 = TextBox2.Text;
                        DateTime dag2 = DateTime.ParseExact(@text2, "yyyy-MM-dd", null);

                        dbCommand.CommandText = "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagEtt, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagTvå, @namn)";
                        dbCommand.Parameters.Add("@dagEtt", @dag1);
                        dbCommand.Parameters.Add("@dagTvå", @dag2);
                        dbCommand.Parameters.Add("@namn", @bokningsNamn);
                        dbCommand.Parameters.Add("@logginnamn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");
                    }
                    else
                    {
                        Label16.Visible = true;
                        Label16.Text = "Du måste välja ett av alternativen i dropdown-menyn och fylla i alla fält innan du bokar!";
                    }
                }
                else if (DropDownList1.SelectedValue == "3")
                {
                    Label16.Visible = false;


                    if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
                    {
                        string anvnamn = Membership.GetUser().ToString();
                        string text1 = TextBox1.Text;
                        DateTime dag1 = DateTime.ParseExact(@text1, "yyyy-MM-dd", null);
                        string text2 = TextBox2.Text;
                        DateTime dag2 = DateTime.ParseExact(@text2, "yyyy-MM-dd", null);
                        string text3 = TextBox3.Text;
                        DateTime dag3 = DateTime.ParseExact(@text3, "yyyy-MM-dd", null);


                        dbCommand.CommandText = "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagEtt, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagTvå, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagTre, @namn)";
                        dbCommand.Parameters.Add("@dagEtt", @dag1);
                        dbCommand.Parameters.Add("@dagTvå", @dag2);
                        dbCommand.Parameters.Add("@dagTre", @dag3);
                        dbCommand.Parameters.Add("@namn", @bokningsNamn);
                        dbCommand.Parameters.Add("@logginnamn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");

                    }
                    else
                    {
                        Label16.Visible = true;
                        Label16.Text = "Du måste välja ett av alternativen i dropdown-menyn och fylla i alla fält innan du bokar!";
                    }
                }
                else if (DropDownList1.SelectedValue == "4")
                {
                    Label16.Visible = false;


                    if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
                    {
                        string anvnamn = Membership.GetUser().ToString();
                        string text1 = TextBox1.Text;
                        DateTime dag1 = DateTime.ParseExact(@text1, "yyyy-MM-dd", null);
                        string text2 = TextBox2.Text;
                        DateTime dag2 = DateTime.ParseExact(@text2, "yyyy-MM-dd", null);
                        string text3 = TextBox3.Text;
                        DateTime dag3 = DateTime.ParseExact(@text3, "yyyy-MM-dd", null);
                        string text4 = TextBox4.Text;
                        DateTime dag4 = DateTime.ParseExact(@text4, "yyyy-MM-dd", null);

                        dbCommand.CommandText = "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagEtt, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagTvå, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagTre, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagFyra, @namn)";
                        dbCommand.Parameters.Add("@dagEtt", @dag1);
                        dbCommand.Parameters.Add("@dagTvå", @dag2);
                        dbCommand.Parameters.Add("@dagTre", @dag3);
                        dbCommand.Parameters.Add("@dagFyra", @dag4);
                        dbCommand.Parameters.Add("@namn", @bokningsNamn);
                        dbCommand.Parameters.Add("@logginnamn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");

                    }
                    else
                    {
                        Label16.Visible = true;
                        Label16.Text = "Du måste välja ett av alternativen i dropdown-menyn och fylla i alla fält innan du bokar!";
                    }
                }
                else if (DropDownList1.SelectedValue == "7")
                {
                    Label16.Visible = false;


                    if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
                    {

                        string anvnamn = Membership.GetUser().ToString();
                        string text1 = TextBox1.Text;
                        DateTime dag1 = DateTime.ParseExact(@text1, "yyyy-MM-dd", null);
                        string text2 = TextBox2.Text;
                        DateTime dag2 = DateTime.ParseExact(@text2, "yyyy-MM-dd", null);
                        string text3 = TextBox3.Text;
                        DateTime dag3 = DateTime.ParseExact(@text3, "yyyy-MM-dd", null);
                        string text4 = TextBox4.Text;
                        DateTime dag4 = DateTime.ParseExact(@text4, "yyyy-MM-dd", null);
                        string text5 = TextBox5.Text;
                        DateTime dag5 = DateTime.ParseExact(@text5, "yyyy-MM-dd", null);
                        string text6 = TextBox6.Text;
                        DateTime dag6 = DateTime.ParseExact(@text6, "yyyy-MM-dd", null);
                        string text7 = TextBox7.Text;
                        DateTime dag7 = DateTime.ParseExact(@text7, "yyyy-MM-dd", null);

                        dbCommand.CommandText = "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagEtt, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagTvå, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagTre, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagFyra, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagFem, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagSex, @namn)" + "INSERT INTO Stugbokning (Bokningsnamn, Datum, Stugnamn) Values (@logginnamn, @dagSju, @namn)";
                        dbCommand.Parameters.Add("@dagEtt", @dag1);
                        dbCommand.Parameters.Add("@dagTvå", @dag2);
                        dbCommand.Parameters.Add("@dagTre", @dag3);
                        dbCommand.Parameters.Add("@dagFyra", @dag4);
                        dbCommand.Parameters.Add("@dagFem", @dag5);
                        dbCommand.Parameters.Add("@dagSex", @dag6);
                        dbCommand.Parameters.Add("@dagSju", @dag7);
                        dbCommand.Parameters.Add("@namn", @bokningsNamn);
                        dbCommand.Parameters.Add("@logginnamn", @anvnamn);
                        dbCommand.ExecuteNonQuery();
                        dbConnection.Close();
                        Response.Redirect("Validera.aspx");

                    }
                    else
                    {
                        Label16.Visible = true;
                        Label16.Text = "Du måste välja ett av alternativen i dropdown-menyn och fylla i alla fält innan du bokar!";
                    }
                }
            }
            else
            {
                Label16.Visible = true;
                Label16.Text = "Du måste välja ett av alternativen i dropdown-menyn och fylla i alla fält innan du bokar!";

            }
        }
        else
        {
            Label16.Visible = true;
            Label16.Text = "Du måste vara inloggad för att kunna genomföra bokningen.";
        }

    }
}
