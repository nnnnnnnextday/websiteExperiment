using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckBoxDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "您的兴趣是：";
        if (CheckBox1.Checked)
        {
            Label1.Text += CheckBox1.Text;
        }
        if (CheckBox2.Checked)
        {
            Label1.Text += CheckBox2.Text;
        }
        if (CheckBox3.Checked)
        {
            Label1.Text += CheckBox3.Text;
        }
    }
}
