using System;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            Response.Write("验证通过");
        }
        else
        {
            Response.Write("验证未通过");
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length > 8)
            args.IsValid = false;
        else
            args.IsValid = true;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Results.Text = "禁用验证！";
    }
}
