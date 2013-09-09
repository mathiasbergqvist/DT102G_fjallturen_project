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

public partial class Stugdetaljer : System.Web.UI.Page
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
}
