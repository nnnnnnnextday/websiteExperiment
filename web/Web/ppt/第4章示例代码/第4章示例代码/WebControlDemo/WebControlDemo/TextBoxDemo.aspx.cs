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

public partial class TextBoxDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void txtPwd_TextChanged(object sender, EventArgs e)
    {
        txtResult.Text = txtName.Text + "，您输入的密码是：" + txtPwd.Text;
    }
}
