using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SqlDataSource_Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //以编程方式执行插入命令
        SqlDataSource2.Insert();
    }
  
    protected void SqlDataSource2_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        //判断插入数据时，是否引发异常
        if (e.Exception != null)
        {
            //显示异常信息
            lblMsg.Text="插入数据库时发生错误，错误原因为：" + e.Exception.Message;
           //表示异常已经处理，避免跳转到系统标准的错误提示页面
            e.ExceptionHandled = true;
        }
    }
    protected void SqlDataSource2_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        //如果页面验证通过，则执行插入；否则取消插入
        if (!Page.IsValid)
        {
            //取消插入
            e.Cancel = true;
        }
    }

}
