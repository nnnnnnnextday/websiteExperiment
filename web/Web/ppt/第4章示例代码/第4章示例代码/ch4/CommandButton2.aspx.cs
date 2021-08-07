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

public partial class CommandButton2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Response.Write("命令按钮测试<br><br><br>");
        }
    }
    protected void Button1_Click(object sender, CommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "btn1":
                Response.Write("春天来了！");
                break;
            case "btn2":
                Response.Write("秋天");
                break;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}
