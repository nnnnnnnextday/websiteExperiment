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

public partial class ValidationControlTestBed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack )
        Response.Write("回传");

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
            Results.Text = "Input is valid...";
        else
            Results.Text = "Input is <b>not<b/> valid...";
    }
}
