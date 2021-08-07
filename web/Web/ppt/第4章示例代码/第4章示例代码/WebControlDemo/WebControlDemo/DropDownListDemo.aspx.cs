using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DropDownListDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        ListItem item = new ListItem(TextBox1.Text, TextBox2.Text);
        DropDownList1.Items.Add(item);
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        DropDownList1.Items.Remove(DropDownList1.SelectedItem);
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        Response.Write("选中的文本为："+DropDownList1.SelectedItem.Text+"<br/>");
        Response.Write("选中的值为："+DropDownList1.SelectedValue);
    }
}
