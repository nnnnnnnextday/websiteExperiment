using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CalendarDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
  

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
         Calendar1.Visible =! Calendar1.Visible;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}
