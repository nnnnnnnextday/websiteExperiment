using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class RadioButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Vanilla.Checked)
            Results.Text = "You like Vanilla";
        else if (Chocolate.Checked)
            Results.Text = "You like Chocolate";
        else if (Strawberry.Checked)
            Results.Text = "You like Strawberry";
    }
}
