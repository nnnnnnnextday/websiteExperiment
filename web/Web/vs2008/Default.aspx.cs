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
        if (!IsPostBack){
            Response.Write("首次加载! <br>" );
            
            Response.Write("IsPostBack=" +IsPostBack);
        }
        else{
            Response.Write("回发的页面<br>");
            Response.Write("IsPostBack=" + IsPostBack);
        }
        Response.Write("<br>URL: " + Request.Url);
        Response.Write("<br>UserHostAddress: " + Request.UserHostAddress);
        Response.Write("<br>PhysicalApplicationPath: " + Request.PhysicalApplicationPath);
        Response.Write("<br>CurrentExecutionFilePath: " + Request.CurrentExecutionFilePath);
        Response.Write("<br>PhysicalPath: " + Request.PhysicalPath);
        
    }
}
