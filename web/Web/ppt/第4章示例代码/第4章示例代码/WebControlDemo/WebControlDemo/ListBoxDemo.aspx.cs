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

public partial class ListBoxDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedItem != null)
        {
            ListBox2.Items.Add(ListBox1.SelectedValue);
            ListBox1.Items.Remove(ListBox1.SelectedItem);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ListBox2.SelectedItem != null)
        {
            ListBox1.Items.Add(ListBox2.SelectedValue);
            ListBox2.Items.Remove(ListBox2.SelectedItem);
        }
    }
}
