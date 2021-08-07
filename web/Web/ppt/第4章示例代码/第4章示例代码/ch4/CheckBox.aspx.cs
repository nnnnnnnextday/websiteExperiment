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

public partial class CheckBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        Results.Text = "";
        if (Vanilla.Checked)
            Results.Text += "You like Vanilla. ";
        if (Chocolate.Checked)
            Results.Text += "You like Chocolate. ";
        if (Strawberry.Checked)
            Results.Text += "You like Strawberry";
    }
}
