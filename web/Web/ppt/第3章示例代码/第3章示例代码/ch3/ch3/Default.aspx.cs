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
        CurrentTime.Text = "欢迎光临！现在时间是：" + DateTime.Now;
        if (!IsPostBack)
        {
            Response.Write("第一次访问!");
        }
        else
        {
            Response.Write("非第一次访问。");
        }
        Label1.Text = "当前网页虚拟路径：" + Request.ServerVariables["URL"];

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("按钮被按下");
    }
}
