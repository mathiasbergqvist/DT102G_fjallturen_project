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

public partial class MasterPage_inloggad : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        if (user != null)
        {
            string inloggad = Membership.GetUser().ToString();
            Label1.Text = "Inloggad som: " + inloggad;
        }
        else
        {
            Label1.Text = "";
        }
    }
    public void HideBannerLinks()
    {
        LinksPanel.Visible = false;
    }
}
