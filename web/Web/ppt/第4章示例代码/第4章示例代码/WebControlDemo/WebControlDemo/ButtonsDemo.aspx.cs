using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ButtonsDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button_Command(object sender, CommandEventArgs e)
    {
        switch(e.CommandName)
        {
            case "New":
                Response.Write("新建");
                break;
            case "Delete":
                Response.Write("删除");
                break;
            case "Modify":
                Response.Write("修改");
                break;
        }
    }
}
