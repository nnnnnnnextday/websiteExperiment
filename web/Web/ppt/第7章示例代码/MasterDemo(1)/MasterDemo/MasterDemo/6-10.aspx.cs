using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _6_10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)//“读取”按钮的事件
    {
        //读取母版页中UserName的属性，并显示在内容页的文本框中
        TextBox3.Text = Master.UserName;
    }
    protected void Button4_Click(object sender, EventArgs e)//“设置”按钮的事件
    {
        //使用内容页中文本框的输入设置母版页中UserName的属性
        Master.UserName = TextBox3.Text;
    }
}
