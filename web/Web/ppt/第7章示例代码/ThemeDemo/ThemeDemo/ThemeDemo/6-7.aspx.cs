using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _6_7 : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if(Session["Theme"]!=null)
            Theme = Session["Theme"].ToString() ;
        else
            Theme = "classic";//默认加载classic主题
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)//"时尚"按钮
    {
        Session["Theme"] = "fashion";//将fashion主题保存到Session中
        Response.Redirect(Request.Url.ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)//"经典"按钮
    {
        Session["Theme"] = "classic";//将classic主题保存到Session中
        Response.Redirect(Request.Url.ToString());
    }
}
