using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UcSample : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WebUserControlDemo1.MaxValue = 50;
        WebUserControlDemo1.MinValue = 20;
    }
}
