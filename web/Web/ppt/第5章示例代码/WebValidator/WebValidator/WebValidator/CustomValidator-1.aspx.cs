using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
 protected void ServerValidate(object source, ServerValidateEventArgs args)
 {
   try
    {
        int num=Int32.Parse(args.Value);
    //判断是否为偶数

    if (num%2==0)
        {
            args.IsValid = true;
            return;
        }
     }
     catch (Exception)
     {
        throw;
     }
        args.IsValid = false;
    }
    protected void ValidateBtn_OnClick(object sender, EventArgs e)
    {
        if (Page.IsValid )
        {
            Response.Write("页有效");
        }
        else
        {
            Response.Write("页无效");
        }
    }
}
