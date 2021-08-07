using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MultiViewDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RadioButtonList1.SelectedIndex = 0;
            MultiView1.ActiveViewIndex = 0;
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = RadioButtonList1.SelectedIndex;
    }
    protected void btnSerch_Click(object sender, EventArgs e)
    {
        switch (MultiView1.ActiveViewIndex)
        {
            case 0:
                // 按书名搜索
                break;
            case 1:
                // 按类别搜索
                break;
            case 2:
                // 按出版社搜索
                break;
        }
    }
}
