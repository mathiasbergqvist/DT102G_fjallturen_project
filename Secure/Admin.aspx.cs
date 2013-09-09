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

public partial class Secure_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Stugor")
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else if (DropDownList1.SelectedValue == "Skoteruthyrning")
        {
            MultiView1.ActiveViewIndex = 1;
        }
        else if (DropDownList1.SelectedValue == "Skiduthyrning")
        {
            MultiView1.ActiveViewIndex = 2;
        }
        else if (DropDownList1.SelectedValue == "Inloggning")
        {
            MultiView1.ActiveViewIndex = 3;
        }
        else if (DropDownList1.SelectedValue == "Kunder")
        {
            MultiView1.ActiveViewIndex = 4;
        }
    }
    protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView2.DataBind();
    }
    protected void DetailsView2_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView2.DataBind();
    }
    protected void DetailsView3_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView3.DataBind();
    }
    protected void DetailsView3_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView3.DataBind();
    }
    protected void DetailsView4_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView4.DataBind();
    }
    protected void DetailsView4_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView4.DataBind();
    }
    protected void DetailsView5_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView5.DataBind();
    }
    protected void DetailsView5_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView5.DataBind();
    }
}
